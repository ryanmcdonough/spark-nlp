/*
 * Copyright 2017-2022 John Snow Labs
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.johnsnowlabs.client.aws

import com.amazonaws.auth.{AWSCredentials, AWSStaticCredentialsProvider}
import com.amazonaws.services.pi.model.InvalidArgumentException
import com.amazonaws.services.s3.model.{
  GetObjectRequest,
  ObjectMetadata,
  PutObjectResult,
  S3Object,
  S3ObjectSummary
}
import com.amazonaws.services.s3.transfer.{Transfer, TransferManagerBuilder}
import com.amazonaws.services.s3.{AmazonS3, AmazonS3ClientBuilder}
import com.amazonaws.{AmazonClientException, AmazonServiceException, ClientConfiguration}
import com.johnsnowlabs.client.CloudStorage
import com.johnsnowlabs.nlp.pretrained.ResourceMetadata
import com.johnsnowlabs.nlp.util.io.ResourceHelper
import com.johnsnowlabs.util.{ConfigHelper, ConfigLoader}
import org.apache.hadoop.fs.{FileSystem, Path}
import org.slf4j.{Logger, LoggerFactory}

import scala.jdk.CollectionConverters._
import java.io.{File, InputStream}
import java.nio.file.Files
import scala.util.control.NonFatal

class AWSGateway(
    accessKeyId: String = ConfigLoader.getConfigStringValue(ConfigHelper.awsExternalAccessKeyId),
    secretAccessKey: String =
      ConfigLoader.getConfigStringValue(ConfigHelper.awsExternalSecretAccessKey),
    sessionToken: String =
      ConfigLoader.getConfigStringValue(ConfigHelper.awsExternalSessionToken),
    awsProfile: String = ConfigLoader.getConfigStringValue(ConfigHelper.awsExternalProfileName),
    region: String = ConfigLoader.getConfigStringValue(ConfigHelper.awsExternalRegion),
    credentialsType: String = "private")
    extends AutoCloseable
    with CloudStorage {

  protected val logger: Logger = LoggerFactory.getLogger(this.getClass.toString)

  lazy val client: AmazonS3 = {
    if (region.isEmpty || region == null) {
      throw new InvalidArgumentException(
        "Region argument is mandatory to create Amazon S3 client.")
    }
    var credentialParams =
      CredentialParams(accessKeyId, secretAccessKey, sessionToken, awsProfile, region)
    if (credentialsType == "public" || credentialsType == "community") {
      credentialParams = CredentialParams("anonymous", "", "", "", region)
    }
    val awsCredentials = new AWSTokenCredentials
    val credentials: Option[AWSCredentials] = awsCredentials.buildCredentials(credentialParams)

    getAmazonS3Client(credentials)
  }

  private def getAmazonS3Client(credentials: Option[AWSCredentials]): AmazonS3 = {
    val config = new ClientConfiguration()
    val timeout = ConfigLoader.getConfigIntValue(ConfigHelper.s3SocketTimeout)
    config.setSocketTimeout(timeout)

    val s3Client = {
      if (credentials.isDefined) {
        AmazonS3ClientBuilder
          .standard()
          .withCredentials(new AWSStaticCredentialsProvider(credentials.get))
          .withClientConfiguration(config)
      } else {
        val warning_message =
          "Unable to build AWS credential via AWSGateway chain, some parameter is missing or" +
            " malformed. S3 integration may not work well."
        logger.warn(warning_message)
        AmazonS3ClientBuilder
          .standard()
          .withClientConfiguration(config)
      }
    }

    s3Client.withRegion(region).build()
  }

  override def doesBucketPathExist(bucketName: String, filePath: String): Boolean = {
    try {
      val listObjects = client.listObjectsV2(bucketName, filePath)
      listObjects.getObjectSummaries.size() > 0
    } catch {
      case exception: AmazonServiceException =>
        if (exception.getStatusCode == 404) false else throw exception
      case NonFatal(unexpectedException) =>
        val methodName = Thread.currentThread.getStackTrace()(1).getMethodName
        throw new Exception(
          s"Unexpected error in ${this.getClass.getName}.$methodName: $unexpectedException")
    }
  }

  override def copyFileToBucket(
      bucketName: String,
      destinationPath: String,
      inputStream: InputStream): Unit = {
    client.putObject(bucketName, destinationPath, inputStream, new ObjectMetadata())
  }

  override def copyInputStreamToBucket(
      bucketName: String,
      filePath: String,
      sourceFilePath: String): Unit = {
    val fileSystem = FileSystem.get(ResourceHelper.spark.sparkContext.hadoopConfiguration)
    val inputStream = fileSystem.open(new Path(sourceFilePath))
    client.putObject(bucketName, filePath, inputStream, new ObjectMetadata())
  }

  def getMetadata(s3Path: String, folder: String, bucket: String): List[ResourceMetadata] = {
    val metaFile = getS3File(s3Path, folder, "metadata.json")
    val obj = this.client.getObject(bucket, metaFile)
    val metadata = ResourceMetadata.readResources(obj.getObjectContent)
    metadata
  }

  def getS3File(parts: String*): String = {
    parts
      .map(part => part.stripSuffix("/"))
      .filter(part => part.nonEmpty)
      .mkString("/")
  }

  def doesS3ObjectExist(bucket: String, s3FilePath: String): Boolean = {
    try {
      client.getObjectMetadata(bucket, s3FilePath)
      true
    } catch {
      case exception: AmazonServiceException =>
        if (exception.getStatusCode == 404) false else throw exception
      case NonFatal(unexpectedException) =>
        val methodName = Thread.currentThread.getStackTrace()(1).getMethodName
        throw new Exception(
          s"Unexpected error in ${this.getClass.getName}.$methodName: $unexpectedException")
    }
  }

  def getS3Object(bucket: String, s3FilePath: String, tmpFile: File): ObjectMetadata = {
    val req = new GetObjectRequest(bucket, s3FilePath)
    client.getObject(req, tmpFile)
  }

  def getS3Object(bucket: String, s3FilePath: String): S3Object = {
    val s3Object = client.getObject(bucket, s3FilePath)
    s3Object
  }

  def getS3DownloadSize(
      s3Path: String,
      folder: String,
      fileName: String,
      bucket: String): Option[Long] = {
    try {
      val s3FilePath = getS3File(s3Path, folder, fileName)
      val meta = client.getObjectMetadata(bucket, s3FilePath)
      Some(meta.getContentLength)
    } catch {
      case exception: AmazonServiceException =>
        if (exception.getStatusCode == 404) None else throw exception
      case NonFatal(unexpectedException) =>
        val methodName = Thread.currentThread.getStackTrace()(1).getMethodName
        throw new Exception(
          s"Unexpected error in ${this.getClass.getName}.$methodName: $unexpectedException")
    }
  }

  override def downloadFilesFromBucketToDirectory(
      bucketName: String,
      filePath: String,
      directoryPath: String,
      isIndex: Boolean = false): Unit = {

    val transferManager = TransferManagerBuilder
      .standard()
      .withS3Client(client)
      .build()
    try {
      val multipleFileDownload =
        transferManager.downloadDirectory(bucketName, filePath, new File(directoryPath))
      println(multipleFileDownload.getDescription)
      waitForCompletion(multipleFileDownload)
    } catch {
      case e: AmazonServiceException =>
        throw new AmazonServiceException(
          "Amazon service error when downloading files from S3 directory: " + e.getMessage)
    }
    transferManager.shutdownNow()

    if (isIndex) {
      // Recursively rename the downloaded files to the desired directory path
      def renameFiles(directory: File, keySuffix: String): Unit = {
        val downloadedFiles = directory.listFiles()
        for (file <- downloadedFiles) {
          if (file.isDirectory()) {
            // If the file is a directory, recursively rename its contents
            val subDirectory = new File(directory, file.getName())
            val subKeySuffix = file.getName()
            renameFiles(subDirectory, subKeySuffix)
          } else {
            // Otherwise, rename the file to the desired local file path
            val fileName = file.getName()
            val newFilePath =
              new File(directoryPath, fileName.stripPrefix(directoryPath)).getPath()
            file.renameTo(new File(newFilePath))
          }
        }
      }

      // Rename the downloaded files to the desired local file path
      val keySuffix = directoryPath.split("/").tail.mkString("/")
      renameFiles(new File(directoryPath), keySuffix)

      // Remove all old folders
      def removeAllFolders(directoryPath: File): Unit = {
        val files = directoryPath.listFiles()
        for (file <- files) {
          if (file.isDirectory()) {
            removeAllFolders(file)
            Files.deleteIfExists(file.toPath())
          }
        }
      }

      removeAllFolders(new File(directoryPath))
    }

  }

  private def waitForCompletion(transfer: Transfer): Unit = {
    try transfer.waitForCompletion()
    catch {
      case e: AmazonServiceException =>
        throw new AmazonServiceException("Amazon service error: " + e.getMessage)
      case e: AmazonClientException =>
        throw new AmazonClientException("Amazon client error: " + e.getMessage)
      case e: InterruptedException =>
        throw new InterruptedException("Transfer interrupted: " + e.getMessage)
    }
  }

  def listS3Files(bucket: String, s3Path: String): Array[S3ObjectSummary] = {
    try {
      val listObjects = client.listObjectsV2(bucket, s3Path)
      listObjects.getObjectSummaries.asScala.toArray
    } catch {
      case e: AmazonServiceException =>
        throw new AmazonServiceException("Amazon service error: " + e.getMessage)
      case NonFatal(unexpectedException) =>
        val methodName = Thread.currentThread.getStackTrace()(1).getMethodName
        throw new Exception(
          s"Unexpected error in ${this.getClass.getName}.$methodName: $unexpectedException")
    }
  }

  override def close(): Unit = {
    client.shutdown()
  }

}
