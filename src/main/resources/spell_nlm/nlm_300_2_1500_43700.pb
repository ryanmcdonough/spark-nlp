
I
train/global_step/initial_valueConst*
dtype0*
value	B : 
]
train/global_step
VariableV2*
dtype0*
	container *
shape: *
shared_name 
�
train/global_step/AssignAssigntrain/global_steptrain/global_step/initial_value*
T0*$
_class
loc:@train/global_step*
validate_shape(*
use_locking(
d
train/global_step/readIdentitytrain/global_step*
T0*$
_class
loc:@train/global_step
F
train/initial_learning_ratePlaceholder*
dtype0*
shape:
D
train/final_learning_ratePlaceholder*
shape:*
dtype0
B
ExponentialDecay/Cast/xConst*
value
B :�*
dtype0
^
ExponentialDecay/CastCastExponentialDecay/Cast/x*

SrcT0*
Truncate( *

DstT0
F
ExponentialDecay/Cast_1/xConst*
valueB
 *��u?*
dtype0
_
ExponentialDecay/Cast_2Casttrain/global_step/read*

SrcT0*
Truncate( *

DstT0
\
ExponentialDecay/truedivRealDivExponentialDecay/Cast_2ExponentialDecay/Cast*
T0
B
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0
W
ExponentialDecay/PowPowExponentialDecay/Cast_1/xExponentialDecay/Floor*
T0
S
ExponentialDecayMultrain/initial_learning_rateExponentialDecay/Pow*
T0
B
LessLessExponentialDecaytrain/final_learning_rate*
T0
9
train/learning_rate/SwitchSwitchLessLess*
T0

O
train/learning_rate/switch_tIdentitytrain/learning_rate/Switch:1*
T0

M
train/learning_rate/switch_fIdentitytrain/learning_rate/Switch*
T0

6
train/learning_rate/pred_idIdentityLess*
T0

e
train/learning_rate/ConstConst^train/learning_rate/switch_t*
valueB
 *o:*
dtype0
�
train/learning_rate/Switch_1SwitchExponentialDecaytrain/learning_rate/pred_id*
T0*#
_class
loc:@ExponentialDecay
m
train/learning_rate/MergeMergetrain/learning_rate/Switch_1train/learning_rate/Const*
T0*
N
7
dropout_ratePlaceholder*
dtype0*
shape:
6
PlaceholderPlaceholder*
dtype0*
shape:
8
Placeholder_1Placeholder*
dtype0*
shape:
4
	file_namePlaceholder*
shape:*
dtype0
_
in-memory-inputPlaceholder*
dtype0*2
shape):'���������������������������
N
input_batchPlaceholder*
dtype0*%
shape:������������������
T
output_batch_cidsPlaceholder*
dtype0*%
shape:������������������
T
output_batch_widsPlaceholder*
dtype0*%
shape:������������������
I
input_batch_lengthsPlaceholder*
shape:���������*
dtype0
�
4input_embedding_mat/Initializer/random_uniform/shapeConst*&
_class
loc:@input_embedding_mat*
valueB"��  ,  *
dtype0
�
2input_embedding_mat/Initializer/random_uniform/minConst*&
_class
loc:@input_embedding_mat*
valueB
 *�R?�*
dtype0
�
2input_embedding_mat/Initializer/random_uniform/maxConst*&
_class
loc:@input_embedding_mat*
valueB
 *�R?<*
dtype0
�
<input_embedding_mat/Initializer/random_uniform/RandomUniformRandomUniform4input_embedding_mat/Initializer/random_uniform/shape*
T0*&
_class
loc:@input_embedding_mat*
dtype0*
seed2 *

seed 
�
2input_embedding_mat/Initializer/random_uniform/subSub2input_embedding_mat/Initializer/random_uniform/max2input_embedding_mat/Initializer/random_uniform/min*
T0*&
_class
loc:@input_embedding_mat
�
2input_embedding_mat/Initializer/random_uniform/mulMul<input_embedding_mat/Initializer/random_uniform/RandomUniform2input_embedding_mat/Initializer/random_uniform/sub*
T0*&
_class
loc:@input_embedding_mat
�
.input_embedding_mat/Initializer/random_uniformAdd2input_embedding_mat/Initializer/random_uniform/mul2input_embedding_mat/Initializer/random_uniform/min*
T0*&
_class
loc:@input_embedding_mat
�
input_embedding_mat
VariableV2*&
_class
loc:@input_embedding_mat*
dtype0*
	container *
shape:���*
shared_name 
�
input_embedding_mat/AssignAssigninput_embedding_mat.input_embedding_mat/Initializer/random_uniform*
use_locking(*
T0*&
_class
loc:@input_embedding_mat*
validate_shape(
j
input_embedding_mat/readIdentityinput_embedding_mat*
T0*&
_class
loc:@input_embedding_mat
g
embedding_lookup/axisConst*
dtype0*&
_class
loc:@input_embedding_mat*
value	B : 
�
embedding_lookupGatherV2input_embedding_mat/readinput_batchembedding_lookup/axis*
Tparams0*&
_class
loc:@input_embedding_mat*
Taxis0*

batch_dims *
Tindices0
@
embedding_lookup/IdentityIdentityembedding_lookup*
T0
E
DropoutWrapperInit/ConstConst*
valueB
 *  �?*
dtype0
G
DropoutWrapperInit/Const_1Const*
valueB
 *  �?*
dtype0
G
DropoutWrapperInit_1/ConstConst*
valueB
 *  �?*
dtype0
I
DropoutWrapperInit_1/Const_1Const*
valueB
 *  �?*
dtype0
�
;output_class_embedding_mat/Initializer/random_uniform/shapeConst*-
_class#
!loc:@output_class_embedding_mat*
valueB"�  ,  *
dtype0
�
9output_class_embedding_mat/Initializer/random_uniform/minConst*-
_class#
!loc:@output_class_embedding_mat*
valueB
 *�{l�*
dtype0
�
9output_class_embedding_mat/Initializer/random_uniform/maxConst*
dtype0*-
_class#
!loc:@output_class_embedding_mat*
valueB
 *�{l=
�
Coutput_class_embedding_mat/Initializer/random_uniform/RandomUniformRandomUniform;output_class_embedding_mat/Initializer/random_uniform/shape*
T0*-
_class#
!loc:@output_class_embedding_mat*
dtype0*
seed2 *

seed 
�
9output_class_embedding_mat/Initializer/random_uniform/subSub9output_class_embedding_mat/Initializer/random_uniform/max9output_class_embedding_mat/Initializer/random_uniform/min*
T0*-
_class#
!loc:@output_class_embedding_mat
�
9output_class_embedding_mat/Initializer/random_uniform/mulMulCoutput_class_embedding_mat/Initializer/random_uniform/RandomUniform9output_class_embedding_mat/Initializer/random_uniform/sub*
T0*-
_class#
!loc:@output_class_embedding_mat
�
5output_class_embedding_mat/Initializer/random_uniformAdd9output_class_embedding_mat/Initializer/random_uniform/mul9output_class_embedding_mat/Initializer/random_uniform/min*
T0*-
_class#
!loc:@output_class_embedding_mat
�
output_class_embedding_mat
VariableV2*
shape:
��*
shared_name *-
_class#
!loc:@output_class_embedding_mat*
dtype0*
	container 
�
!output_class_embedding_mat/AssignAssignoutput_class_embedding_mat5output_class_embedding_mat/Initializer/random_uniform*
T0*-
_class#
!loc:@output_class_embedding_mat*
validate_shape(*
use_locking(

output_class_embedding_mat/readIdentityoutput_class_embedding_mat*
T0*-
_class#
!loc:@output_class_embedding_mat
�
<output_class_embedding_bias/Initializer/random_uniform/shapeConst*.
_class$
" loc:@output_class_embedding_bias*
valueB:�*
dtype0
�
:output_class_embedding_bias/Initializer/random_uniform/minConst*.
_class$
" loc:@output_class_embedding_bias*
valueB
 *�-7�*
dtype0
�
:output_class_embedding_bias/Initializer/random_uniform/maxConst*.
_class$
" loc:@output_class_embedding_bias*
valueB
 *�-7=*
dtype0
�
Doutput_class_embedding_bias/Initializer/random_uniform/RandomUniformRandomUniform<output_class_embedding_bias/Initializer/random_uniform/shape*
dtype0*
seed2 *

seed *
T0*.
_class$
" loc:@output_class_embedding_bias
�
:output_class_embedding_bias/Initializer/random_uniform/subSub:output_class_embedding_bias/Initializer/random_uniform/max:output_class_embedding_bias/Initializer/random_uniform/min*
T0*.
_class$
" loc:@output_class_embedding_bias
�
:output_class_embedding_bias/Initializer/random_uniform/mulMulDoutput_class_embedding_bias/Initializer/random_uniform/RandomUniform:output_class_embedding_bias/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@output_class_embedding_bias
�
6output_class_embedding_bias/Initializer/random_uniformAdd:output_class_embedding_bias/Initializer/random_uniform/mul:output_class_embedding_bias/Initializer/random_uniform/min*
T0*.
_class$
" loc:@output_class_embedding_bias
�
output_class_embedding_bias
VariableV2*.
_class$
" loc:@output_class_embedding_bias*
dtype0*
	container *
shape:�*
shared_name 
�
"output_class_embedding_bias/AssignAssignoutput_class_embedding_bias6output_class_embedding_bias/Initializer/random_uniform*
use_locking(*
T0*.
_class$
" loc:@output_class_embedding_bias*
validate_shape(
�
 output_class_embedding_bias/readIdentityoutput_class_embedding_bias*
T0*.
_class$
" loc:@output_class_embedding_bias
�
<output_wordid_embedding_mat/Initializer/random_uniform/shapeConst*
dtype0*.
_class$
" loc:@output_wordid_embedding_mat*
valueB"�  ,  
�
:output_wordid_embedding_mat/Initializer/random_uniform/minConst*.
_class$
" loc:@output_wordid_embedding_mat*
valueB
 *�{l�*
dtype0
�
:output_wordid_embedding_mat/Initializer/random_uniform/maxConst*.
_class$
" loc:@output_wordid_embedding_mat*
valueB
 *�{l=*
dtype0
�
Doutput_wordid_embedding_mat/Initializer/random_uniform/RandomUniformRandomUniform<output_wordid_embedding_mat/Initializer/random_uniform/shape*
T0*.
_class$
" loc:@output_wordid_embedding_mat*
dtype0*
seed2 *

seed 
�
:output_wordid_embedding_mat/Initializer/random_uniform/subSub:output_wordid_embedding_mat/Initializer/random_uniform/max:output_wordid_embedding_mat/Initializer/random_uniform/min*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
:output_wordid_embedding_mat/Initializer/random_uniform/mulMulDoutput_wordid_embedding_mat/Initializer/random_uniform/RandomUniform:output_wordid_embedding_mat/Initializer/random_uniform/sub*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
6output_wordid_embedding_mat/Initializer/random_uniformAdd:output_wordid_embedding_mat/Initializer/random_uniform/mul:output_wordid_embedding_mat/Initializer/random_uniform/min*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
output_wordid_embedding_mat
VariableV2*
shape:
��*
shared_name *.
_class$
" loc:@output_wordid_embedding_mat*
dtype0*
	container 
�
"output_wordid_embedding_mat/AssignAssignoutput_wordid_embedding_mat6output_wordid_embedding_mat/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
 output_wordid_embedding_mat/readIdentityoutput_wordid_embedding_mat*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
=output_wordid_embedding_bias/Initializer/random_uniform/shapeConst*/
_class%
#!loc:@output_wordid_embedding_bias*
valueB:�*
dtype0
�
;output_wordid_embedding_bias/Initializer/random_uniform/minConst*/
_class%
#!loc:@output_wordid_embedding_bias*
valueB
 *�-7�*
dtype0
�
;output_wordid_embedding_bias/Initializer/random_uniform/maxConst*/
_class%
#!loc:@output_wordid_embedding_bias*
valueB
 *�-7=*
dtype0
�
Eoutput_wordid_embedding_bias/Initializer/random_uniform/RandomUniformRandomUniform=output_wordid_embedding_bias/Initializer/random_uniform/shape*
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
dtype0*
seed2 *

seed 
�
;output_wordid_embedding_bias/Initializer/random_uniform/subSub;output_wordid_embedding_bias/Initializer/random_uniform/max;output_wordid_embedding_bias/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@output_wordid_embedding_bias
�
;output_wordid_embedding_bias/Initializer/random_uniform/mulMulEoutput_wordid_embedding_bias/Initializer/random_uniform/RandomUniform;output_wordid_embedding_bias/Initializer/random_uniform/sub*
T0*/
_class%
#!loc:@output_wordid_embedding_bias
�
7output_wordid_embedding_bias/Initializer/random_uniformAdd;output_wordid_embedding_bias/Initializer/random_uniform/mul;output_wordid_embedding_bias/Initializer/random_uniform/min*
T0*/
_class%
#!loc:@output_wordid_embedding_bias
�
output_wordid_embedding_bias
VariableV2*/
_class%
#!loc:@output_wordid_embedding_bias*
dtype0*
	container *
shape:�*
shared_name 
�
#output_wordid_embedding_bias/AssignAssignoutput_wordid_embedding_bias7output_wordid_embedding_bias/Initializer/random_uniform*
use_locking(*
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
validate_shape(
�
!output_wordid_embedding_bias/readIdentityoutput_wordid_embedding_bias*
T0*/
_class%
#!loc:@output_wordid_embedding_bias
2
rnn/RankConst*
dtype0*
value	B :
9
rnn/range/startConst*
value	B :*
dtype0
9
rnn/range/deltaConst*
value	B :*
dtype0
J
	rnn/rangeRangernn/range/startrnn/Rankrnn/range/delta*

Tidx0
H
rnn/concat/values_0Const*
valueB"       *
dtype0
9
rnn/concat/axisConst*
value	B : *
dtype0
e

rnn/concatConcatV2rnn/concat/values_0	rnn/rangernn/concat/axis*
T0*
N*

Tidx0
W
rnn/transpose	Transposeembedding_lookup/Identity
rnn/concat*
Tperm0*
T0
=
rnn/sequence_lengthIdentityinput_batch_lengths*
T0
:
	rnn/ShapeShapernn/transpose*
T0*
out_type0
E
rnn/strided_slice/stackConst*
valueB:*
dtype0
G
rnn/strided_slice/stack_1Const*
valueB:*
dtype0
G
rnn/strided_slice/stack_2Const*
valueB:*
dtype0
�
rnn/strided_sliceStridedSlice	rnn/Shapernn/strided_slice/stackrnn/strided_slice/stack_1rnn/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
|
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dimConst*
value	B : *
dtype0
�
Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_sliceRrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0
x
Irnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstConst*
valueB:�*
dtype0
y
Ornn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0
�
Jrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatConcatV2Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDimsIrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ConstOrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat/axis*

Tidx0*
T0*
N
|
Ornn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/ConstConst*
dtype0*
valueB
 *    
�
Irnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zerosFillJrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concatOrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros/Const*
T0*

index_type0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dimConst*
value	B : *
dtype0
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0
z
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_1Const*
valueB:�*
dtype0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0
z
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Const*
valueB:�*
dtype0
{
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axisConst*
dtype0*
value	B : 
�
Lrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1ConcatV2Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_2Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_2Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1/axis*
N*

Tidx0*
T0
~
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0
�
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1FillLrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/concat_1Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
value	B : 
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0
z
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/Const_3Const*
valueB:�*
dtype0
~
Trnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dimConst*
dtype0*
value	B : 
�
Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims
ExpandDimsrnn/strided_sliceTrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims/dim*

Tdim0*
T0
z
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstConst*
dtype0*
valueB:�
{
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0
�
Lrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatConcatV2Prnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDimsKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ConstQrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat/axis*
T0*
N*

Tidx0
~
Qrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0
�
Krnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zerosFillLrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concatQrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros/Const*
T0*

index_type0
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dimConst*
dtype0*
value	B : 
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_1/dim*

Tdim0*
T0
|
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_1Const*
dtype0*
valueB:�
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dimConst*
value	B : *
dtype0
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2/dim*

Tdim0*
T0
|
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Const*
valueB:�*
dtype0
}
Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axisConst*
dtype0*
value	B : 
�
Nrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1ConcatV2Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_2Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_2Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1/axis*

Tidx0*
T0*
N
�
Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0
�
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1FillNrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/concat_1Srnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0
�
Vrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dimConst*
dtype0*
value	B : 
�
Rrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3
ExpandDimsrnn/strided_sliceVrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/ExpandDims_3/dim*

Tdim0*
T0
|
Mrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/Const_3Const*
dtype0*
valueB:�
B
rnn/Shape_1Shapernn/sequence_length*
T0*
out_type0
B
	rnn/stackPackrnn/strided_slice*
T0*

axis *
N
3
	rnn/EqualEqualrnn/Shape_1	rnn/stack*
T0
7
	rnn/ConstConst*
dtype0*
valueB: 
A
rnn/AllAll	rnn/Equal	rnn/Const*

Tidx0*
	keep_dims( 
l
rnn/Assert/ConstConst*
dtype0*D
value;B9 B3Expected shape for Tensor rnn/sequence_length:0 is 
K
rnn/Assert/Const_1Const*!
valueB B but saw shape: *
dtype0
t
rnn/Assert/Assert/data_0Const*
dtype0*D
value;B9 B3Expected shape for Tensor rnn/sequence_length:0 is 
Q
rnn/Assert/Assert/data_2Const*!
valueB B but saw shape: *
dtype0
�
rnn/Assert/AssertAssertrnn/Allrnn/Assert/Assert/data_0	rnn/stackrnn/Assert/Assert/data_2rnn/Shape_1*
T
2*
	summarize
M
rnn/CheckSeqLenIdentityrnn/sequence_length^rnn/Assert/Assert*
T0
<
rnn/Shape_2Shapernn/transpose*
T0*
out_type0
G
rnn/strided_slice_1/stackConst*
dtype0*
valueB: 
I
rnn/strided_slice_1/stack_1Const*
valueB:*
dtype0
I
rnn/strided_slice_1/stack_2Const*
valueB:*
dtype0
�
rnn/strided_slice_1StridedSlicernn/Shape_2rnn/strided_slice_1/stackrnn/strided_slice_1/stack_1rnn/strided_slice_1/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0
<
rnn/Shape_3Shapernn/transpose*
T0*
out_type0
G
rnn/strided_slice_2/stackConst*
valueB:*
dtype0
I
rnn/strided_slice_2/stack_1Const*
valueB:*
dtype0
I
rnn/strided_slice_2/stack_2Const*
valueB:*
dtype0
�
rnn/strided_slice_2StridedSlicernn/Shape_3rnn/strided_slice_2/stackrnn/strided_slice_2/stack_1rnn/strided_slice_2/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
<
rnn/ExpandDims/dimConst*
dtype0*
value	B : 
Z
rnn/ExpandDims
ExpandDimsrnn/strided_slice_2rnn/ExpandDims/dim*
T0*

Tdim0
:
rnn/Const_1Const*
dtype0*
valueB:�
;
rnn/concat_1/axisConst*
value	B : *
dtype0
f
rnn/concat_1ConcatV2rnn/ExpandDimsrnn/Const_1rnn/concat_1/axis*
T0*
N*

Tidx0
<
rnn/zeros/ConstConst*
valueB
 *    *
dtype0
K
	rnn/zerosFillrnn/concat_1rnn/zeros/Const*
T0*

index_type0
9
rnn/Const_2Const*
valueB: *
dtype0
R
rnn/MinMinrnn/CheckSeqLenrnn/Const_2*
T0*

Tidx0*
	keep_dims( 
9
rnn/Const_3Const*
valueB: *
dtype0
R
rnn/MaxMaxrnn/CheckSeqLenrnn/Const_3*

Tidx0*
	keep_dims( *
T0
2
rnn/timeConst*
dtype0*
value	B : 
�
rnn/TensorArrayTensorArrayV3rnn/strided_slice_1*%
element_shape:����������*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*/
tensor_array_namernn/dynamic_rnn/output_0*
dtype0
�
rnn/TensorArray_1TensorArrayV3rnn/strided_slice_1*.
tensor_array_namernn/dynamic_rnn/input_0*
dtype0*%
element_shape:����������*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
M
rnn/TensorArrayUnstack/ShapeShapernn/transpose*
T0*
out_type0
X
*rnn/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
Z
,rnn/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
$rnn/TensorArrayUnstack/strided_sliceStridedSlicernn/TensorArrayUnstack/Shape*rnn/TensorArrayUnstack/strided_slice/stack,rnn/TensorArrayUnstack/strided_slice/stack_1,rnn/TensorArrayUnstack/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
Index0*
T0*
shrink_axis_mask
L
"rnn/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
L
"rnn/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
rnn/TensorArrayUnstack/rangeRange"rnn/TensorArrayUnstack/range/start$rnn/TensorArrayUnstack/strided_slice"rnn/TensorArrayUnstack/range/delta*

Tidx0
�
>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3rnn/TensorArray_1rnn/TensorArrayUnstack/rangernn/transposernn/TensorArray_1:1*
T0* 
_class
loc:@rnn/transpose
7
rnn/Maximum/xConst*
dtype0*
value	B :
7
rnn/MaximumMaximumrnn/Maximum/xrnn/Max*
T0
A
rnn/MinimumMinimumrnn/strided_slice_1rnn/Maximum*
T0
E
rnn/while/iteration_counterConst*
dtype0*
value	B : 
�
rnn/while/EnterEnterrnn/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_1Enterrnn/time*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant( 
�
rnn/while/Enter_2Enterrnn/TensorArray:1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_3EnterIrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_4EnterKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_5EnterKrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros*
T0*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Enter_6EnterMrnn/MultiRNNCellZeroState/DropoutWrapperZeroState_1/LSTMCellZeroState/zeros_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant( 
T
rnn/while/MergeMergernn/while/Enterrnn/while/NextIteration*
N*
T0
Z
rnn/while/Merge_1Mergernn/while/Enter_1rnn/while/NextIteration_1*
T0*
N
Z
rnn/while/Merge_2Mergernn/while/Enter_2rnn/while/NextIteration_2*
T0*
N
Z
rnn/while/Merge_3Mergernn/while/Enter_3rnn/while/NextIteration_3*
T0*
N
Z
rnn/while/Merge_4Mergernn/while/Enter_4rnn/while/NextIteration_4*
T0*
N
Z
rnn/while/Merge_5Mergernn/while/Enter_5rnn/while/NextIteration_5*
T0*
N
Z
rnn/while/Merge_6Mergernn/while/Enter_6rnn/while/NextIteration_6*
N*
T0
F
rnn/while/LessLessrnn/while/Mergernn/while/Less/Enter*
T0
�
rnn/while/Less/EnterEnterrnn/strided_slice_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
L
rnn/while/Less_1Lessrnn/while/Merge_1rnn/while/Less_1/Enter*
T0
�
rnn/while/Less_1/EnterEnterrnn/Minimum*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
D
rnn/while/LogicalAnd
LogicalAndrnn/while/Lessrnn/while/Less_1
4
rnn/while/LoopCondLoopCondrnn/while/LogicalAnd
l
rnn/while/SwitchSwitchrnn/while/Mergernn/while/LoopCond*
T0*"
_class
loc:@rnn/while/Merge
r
rnn/while/Switch_1Switchrnn/while/Merge_1rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_1
r
rnn/while/Switch_2Switchrnn/while/Merge_2rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_2
r
rnn/while/Switch_3Switchrnn/while/Merge_3rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_3
r
rnn/while/Switch_4Switchrnn/while/Merge_4rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_4
r
rnn/while/Switch_5Switchrnn/while/Merge_5rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_5
r
rnn/while/Switch_6Switchrnn/while/Merge_6rnn/while/LoopCond*
T0*$
_class
loc:@rnn/while/Merge_6
;
rnn/while/IdentityIdentityrnn/while/Switch:1*
T0
?
rnn/while/Identity_1Identityrnn/while/Switch_1:1*
T0
?
rnn/while/Identity_2Identityrnn/while/Switch_2:1*
T0
?
rnn/while/Identity_3Identityrnn/while/Switch_3:1*
T0
?
rnn/while/Identity_4Identityrnn/while/Switch_4:1*
T0
?
rnn/while/Identity_5Identityrnn/while/Switch_5:1*
T0
?
rnn/while/Identity_6Identityrnn/while/Switch_6:1*
T0
N
rnn/while/add/yConst^rnn/while/Identity*
value	B :*
dtype0
B
rnn/while/addAddrnn/while/Identityrnn/while/add/y*
T0
�
rnn/while/TensorArrayReadV3TensorArrayReadV3!rnn/while/TensorArrayReadV3/Enterrnn/while/Identity_1#rnn/while/TensorArrayReadV3/Enter_1*
dtype0
�
!rnn/while/TensorArrayReadV3/EnterEnterrnn/TensorArray_1*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
#rnn/while/TensorArrayReadV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
c
rnn/while/GreaterEqualGreaterEqualrnn/while/Identity_1rnn/while/GreaterEqual/Enter*
T0
�
rnn/while/GreaterEqual/EnterEnterrnn/CheckSeqLen*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
k
)rnn/while/rnn/multi_rnn_cell/cell_0/sub/xConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
'rnn/while/rnn/multi_rnn_cell/cell_0/subSub)rnn/while/rnn/multi_rnn_cell/cell_0/sub/x-rnn/while/rnn/multi_rnn_cell/cell_0/sub/Enter*
T0
�
-rnn/while/rnn/multi_rnn_cell/cell_0/sub/EnterEnterdropout_rate*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
p
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/ShapeShapernn/while/TensorArrayReadV3*
T0*
out_type0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/minConst^rnn/while/Identity*
valueB
 *    *
dtype0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/maxConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
Hrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Shape*

seed *
T0*
dtype0*
seed2 
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/sub*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform/min*
T0
s
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/sub/xConst^rnn/while/Identity*
dtype0*
valueB
 *  �?
�
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/subSub1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/sub/x'rnn/while/rnn/multi_rnn_cell/cell_0/sub*
T0
w
5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv/xConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truedivRealDiv5rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv/x/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/sub*
T0
�
8rnn/while/rnn/multi_rnn_cell/cell_0/dropout/GreaterEqualGreaterEqual:rnn/while/rnn/multi_rnn_cell/cell_0/dropout/random_uniform'rnn/while/rnn/multi_rnn_cell/cell_0/sub*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mulMulrnn/while/TensorArrayReadV33rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv*
T0
�
0rnn/while/rnn/multi_rnn_cell/cell_0/dropout/CastCast8rnn/while/rnn/multi_rnn_cell/cell_0/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0
�
1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1Mul/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul0rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Cast*
T0
�
Krnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shapeConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB"X  �  *
dtype0
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *�{l�
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
valueB
 *�{l=
�
Srnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
seed2 *

seed 
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Ernn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
VariableV2*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
	container *
shape:
��	*
shared_name 
�
1rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelErnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Initializer/random_uniform*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(*
use_locking(
p
/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
T0
�
Jrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueB:�	
�
@rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
valueB
 *    *
dtype0
�
:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zerosFillJrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros/shape_as_tensor@rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*

index_type0
�
(rnn/multi_rnn_cell/cell_0/lstm_cell/bias
VariableV2*
shape:�	*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
	container 
�
/rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_0/lstm_cell/bias:rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Initializer/zeros*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(*
use_locking(
l
-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
T0
x
9rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axisConst^rnn/while/Identity*
dtype0*
value	B :
�
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concatConcatV21rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1rnn/while/Identity_49rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat/axis*
N*

Tidx0*
T0
�
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMulMatMul4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
T0*
transpose_a( *
transpose_b( 
�
:rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAddBiasAdd4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
�
;rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_0/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
r
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/ConstConst^rnn/while/Identity*
value	B :*
dtype0
|
=rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/splitSplit=rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split/split_dim5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd*
T0*
	num_split
u
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/addAdd5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:23rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add/y*
T0
|
5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/SigmoidSigmoid1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mulMul5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoidrnn/while/Identity_3*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1Sigmoid3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*
T0
z
2rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/TanhTanh5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1Mul7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_12rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1Add1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2Sigmoid5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:3*
T0
z
4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1Tanh3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2Mul7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_24rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
T0
k
)rnn/while/rnn/multi_rnn_cell/cell_1/sub/xConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
'rnn/while/rnn/multi_rnn_cell/cell_1/subSub)rnn/while/rnn/multi_rnn_cell/cell_1/sub/x-rnn/while/rnn/multi_rnn_cell/cell_0/sub/Enter*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/ShapeShape3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0*
out_type0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/minConst^rnn/while/Identity*
valueB
 *    *
dtype0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/maxConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
Hrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniformRandomUniform1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Shape*

seed *
T0*
dtype0*
seed2 
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/subSub>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/max>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
�
>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mulMulHrnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/RandomUniform>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/sub*
T0
�
:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniformAdd>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/mul>rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform/min*
T0
s
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/sub/xConst^rnn/while/Identity*
dtype0*
valueB
 *  �?
�
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/subSub1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/sub/x'rnn/while/rnn/multi_rnn_cell/cell_1/sub*
T0
w
5rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv/xConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
3rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truedivRealDiv5rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv/x/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/sub*
T0
�
8rnn/while/rnn/multi_rnn_cell/cell_1/dropout/GreaterEqualGreaterEqual:rnn/while/rnn/multi_rnn_cell/cell_1/dropout/random_uniform'rnn/while/rnn/multi_rnn_cell/cell_1/sub*
T0
�
/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mulMul3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_23rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv*
T0
�
0rnn/while/rnn/multi_rnn_cell/cell_1/dropout/CastCast8rnn/while/rnn/multi_rnn_cell/cell_1/dropout/GreaterEqual*

SrcT0
*
Truncate( *

DstT0
�
1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1Mul/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul0rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Cast*
T0
�
Krnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB"X  �  
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *�{l�
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxConst*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
valueB
 *�{l=*
dtype0
�
Srnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformKrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0*
seed2 *

seed 
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/subSubIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/maxIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Irnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulMulSrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/RandomUniformIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Ernn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniformAddIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/mulIrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform/min*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
VariableV2*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0*
	container *
shape:
��	
�
1rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AssignAssign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelErnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Initializer/random_uniform*
validate_shape(*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
p
/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/readIdentity*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
T0
�
Jrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueB:�	*
dtype0
�
@rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros/ConstConst*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
valueB
 *    *
dtype0
�
:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zerosFillJrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros/shape_as_tensor@rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros/Const*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*

index_type0
�
(rnn/multi_rnn_cell/cell_1/lstm_cell/bias
VariableV2*
shape:�	*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
	container 
�
/rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AssignAssign(rnn/multi_rnn_cell/cell_1/lstm_cell/bias:rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Initializer/zeros*
validate_shape(*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
l
-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/readIdentity(rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
T0
x
9rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axisConst^rnn/while/Identity*
value	B :*
dtype0
�
4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concatConcatV21rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1rnn/while/Identity_69rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat/axis*
N*

Tidx0*
T0
�
4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMulMatMul4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat:rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter*
transpose_b( *
T0*
transpose_a( 
�
:rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAddBiasAdd4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul;rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC
�
;rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/EnterEnter-rnn/multi_rnn_cell/cell_1/lstm_cell/bias/read*
parallel_iterations *'

frame_namernn/while/while_context*
T0*
is_constant(
r
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/ConstConst^rnn/while/Identity*
dtype0*
value	B :
|
=rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dimConst^rnn/while/Identity*
value	B :*
dtype0
�
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/splitSplit=rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split/split_dim5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd*
T0*
	num_split
u
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add/yConst^rnn/while/Identity*
valueB
 *  �?*
dtype0
�
1rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/addAdd5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:23rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add/y*
T0
|
5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/SigmoidSigmoid1rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
T0
�
1rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mulMul5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoidrnn/while/Identity_5*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1Sigmoid3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split*
T0
z
2rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/TanhTanh5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1Mul7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_12rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1Add1rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
T0
�
7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2Sigmoid5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:3*
T0
z
4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1Tanh3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
T0
�
3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2Mul7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_24rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1*
T0
�
rnn/while/SelectSelectrnn/while/GreaterEqualrnn/while/Select/Enter3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
rnn/while/Select/EnterEnter	rnn/zeros*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
rnn/while/Select_1Selectrnn/while/GreaterEqualrnn/while/Identity_33rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
rnn/while/Select_2Selectrnn/while/GreaterEqualrnn/while/Identity_43rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
rnn/while/Select_3Selectrnn/while/GreaterEqualrnn/while/Identity_53rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
rnn/while/Select_4Selectrnn/while/GreaterEqualrnn/while/Identity_63rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
-rnn/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33rnn/while/TensorArrayWrite/TensorArrayWriteV3/Enterrnn/while/Identity_1rnn/while/Selectrnn/while/Identity_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
3rnn/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnterrnn/TensorArray*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
P
rnn/while/add_1/yConst^rnn/while/Identity*
value	B :*
dtype0
H
rnn/while/add_1Addrnn/while/Identity_1rnn/while/add_1/y*
T0
@
rnn/while/NextIterationNextIterationrnn/while/add*
T0
D
rnn/while/NextIteration_1NextIterationrnn/while/add_1*
T0
b
rnn/while/NextIteration_2NextIteration-rnn/while/TensorArrayWrite/TensorArrayWriteV3*
T0
G
rnn/while/NextIteration_3NextIterationrnn/while/Select_1*
T0
G
rnn/while/NextIteration_4NextIterationrnn/while/Select_2*
T0
G
rnn/while/NextIteration_5NextIterationrnn/while/Select_3*
T0
G
rnn/while/NextIteration_6NextIterationrnn/while/Select_4*
T0
1
rnn/while/ExitExitrnn/while/Switch*
T0
5
rnn/while/Exit_1Exitrnn/while/Switch_1*
T0
5
rnn/while/Exit_2Exitrnn/while/Switch_2*
T0
5
rnn/while/Exit_3Exitrnn/while/Switch_3*
T0
5
rnn/while/Exit_4Exitrnn/while/Switch_4*
T0
5
rnn/while/Exit_5Exitrnn/while/Switch_5*
T0
5
rnn/while/Exit_6Exitrnn/while/Switch_6*
T0
�
&rnn/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray
n
 rnn/TensorArrayStack/range/startConst*"
_class
loc:@rnn/TensorArray*
value	B : *
dtype0
n
 rnn/TensorArrayStack/range/deltaConst*
dtype0*"
_class
loc:@rnn/TensorArray*
value	B :
�
rnn/TensorArrayStack/rangeRange rnn/TensorArrayStack/range/start&rnn/TensorArrayStack/TensorArraySizeV3 rnn/TensorArrayStack/range/delta*"
_class
loc:@rnn/TensorArray*

Tidx0
�
(rnn/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3rnn/TensorArrayrnn/TensorArrayStack/rangernn/while/Exit_2*%
element_shape:����������*"
_class
loc:@rnn/TensorArray*
dtype0
:
rnn/Const_4Const*
dtype0*
valueB:�
4

rnn/Rank_1Const*
dtype0*
value	B :
;
rnn/range_1/startConst*
value	B :*
dtype0
;
rnn/range_1/deltaConst*
value	B :*
dtype0
R
rnn/range_1Rangernn/range_1/start
rnn/Rank_1rnn/range_1/delta*

Tidx0
J
rnn/concat_2/values_0Const*
valueB"       *
dtype0
;
rnn/concat_2/axisConst*
value	B : *
dtype0
m
rnn/concat_2ConcatV2rnn/concat_2/values_0rnn/range_1rnn/concat_2/axis*
N*

Tidx0*
T0
j
rnn/transpose_1	Transpose(rnn/TensorArrayStack/TensorArrayGatherV3rnn/concat_2*
T0*
Tperm0
<
	map/ShapeShapernn/transpose_1*
T0*
out_type0
E
map/strided_slice/stackConst*
valueB: *
dtype0
G
map/strided_slice/stack_1Const*
dtype0*
valueB:
G
map/strided_slice/stack_2Const*
dtype0*
valueB:
�
map/strided_sliceStridedSlice	map/Shapemap/strided_slice/stackmap/strided_slice/stack_1map/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
T0*
Index0*
shrink_axis_mask
�
map/TensorArrayTensorArrayV3map/strided_slice*
tensor_array_name *
dtype0*
element_shape:*
clear_after_read(*
dynamic_size( *
identical_element_shapes(
O
map/TensorArrayUnstack/ShapeShapernn/transpose_1*
T0*
out_type0
X
*map/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
valueB: 
Z
,map/TensorArrayUnstack/strided_slice/stack_1Const*
valueB:*
dtype0
Z
,map/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0
�
$map/TensorArrayUnstack/strided_sliceStridedSlicemap/TensorArrayUnstack/Shape*map/TensorArrayUnstack/strided_slice/stack,map/TensorArrayUnstack/strided_slice/stack_1,map/TensorArrayUnstack/strided_slice/stack_2*
end_mask *
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask 
L
"map/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
L
"map/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0
�
map/TensorArrayUnstack/rangeRange"map/TensorArrayUnstack/range/start$map/TensorArrayUnstack/strided_slice"map/TensorArrayUnstack/range/delta*

Tidx0
�
>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map/TensorArraymap/TensorArrayUnstack/rangernn/transpose_1map/TensorArray:1*
T0*"
_class
loc:@rnn/transpose_1
3
	map/ConstConst*
value	B : *
dtype0
�
map/TensorArray_1TensorArrayV3map/strided_slice*
tensor_array_name *
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
E
map/while/iteration_counterConst*
value	B : *
dtype0
�
map/while/EnterEntermap/while/iteration_counter*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
�
map/while/Enter_1Enter	map/Const*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
�
map/while/Enter_2Entermap/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*'

frame_namemap/while/while_context
T
map/while/MergeMergemap/while/Entermap/while/NextIteration*
N*
T0
Z
map/while/Merge_1Mergemap/while/Enter_1map/while/NextIteration_1*
T0*
N
Z
map/while/Merge_2Mergemap/while/Enter_2map/while/NextIteration_2*
N*
T0
F
map/while/LessLessmap/while/Mergemap/while/Less/Enter*
T0
�
map/while/Less/EnterEntermap/strided_slice*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
J
map/while/Less_1Lessmap/while/Merge_1map/while/Less/Enter*
T0
D
map/while/LogicalAnd
LogicalAndmap/while/Lessmap/while/Less_1
4
map/while/LoopCondLoopCondmap/while/LogicalAnd
l
map/while/SwitchSwitchmap/while/Mergemap/while/LoopCond*
T0*"
_class
loc:@map/while/Merge
r
map/while/Switch_1Switchmap/while/Merge_1map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_1
r
map/while/Switch_2Switchmap/while/Merge_2map/while/LoopCond*
T0*$
_class
loc:@map/while/Merge_2
;
map/while/IdentityIdentitymap/while/Switch:1*
T0
?
map/while/Identity_1Identitymap/while/Switch_1:1*
T0
?
map/while/Identity_2Identitymap/while/Switch_2:1*
T0
N
map/while/add/yConst^map/while/Identity*
value	B :*
dtype0
B
map/while/addAddmap/while/Identitymap/while/add/y*
T0
�
map/while/TensorArrayReadV3TensorArrayReadV3!map/while/TensorArrayReadV3/Entermap/while/Identity_1#map/while/TensorArrayReadV3/Enter_1*
dtype0
�
!map/while/TensorArrayReadV3/EnterEntermap/TensorArray*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
#map/while/TensorArrayReadV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
b
map/while/transpose/permConst^map/while/Identity*
dtype0*
valueB"       
k
map/while/transpose	Transposemap/while/transpose/Entermap/while/transpose/perm*
Tperm0*
T0
�
map/while/transpose/EnterEnteroutput_class_embedding_mat/read*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
{
map/while/MatMulMatMulmap/while/TensorArrayReadV3map/while/transpose*
transpose_a( *
transpose_b( *
T0
H
map/while/Add_1Addmap/while/MatMulmap/while/Add_1/Enter*
T0
�
map/while/Add_1/EnterEnter output_class_embedding_bias/read*
T0*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
-map/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV33map/while/TensorArrayWrite/TensorArrayWriteV3/Entermap/while/Identity_1map/while/Add_1map/while/Identity_2*
T0*"
_class
loc:@map/while/Add_1
�
3map/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap/TensorArray_1*
T0*"
_class
loc:@map/while/Add_1*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
P
map/while/add_2/yConst^map/while/Identity*
value	B :*
dtype0
H
map/while/add_2Addmap/while/Identity_1map/while/add_2/y*
T0
@
map/while/NextIterationNextIterationmap/while/add*
T0
D
map/while/NextIteration_1NextIterationmap/while/add_2*
T0
b
map/while/NextIteration_2NextIteration-map/while/TensorArrayWrite/TensorArrayWriteV3*
T0
1
map/while/ExitExitmap/while/Switch*
T0
5
map/while/Exit_1Exitmap/while/Switch_1*
T0
5
map/while/Exit_2Exitmap/while/Switch_2*
T0
�
&map/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map/TensorArray_1map/while/Exit_2*$
_class
loc:@map/TensorArray_1
p
 map/TensorArrayStack/range/startConst*$
_class
loc:@map/TensorArray_1*
value	B : *
dtype0
p
 map/TensorArrayStack/range/deltaConst*$
_class
loc:@map/TensorArray_1*
value	B :*
dtype0
�
map/TensorArrayStack/rangeRange map/TensorArrayStack/range/start&map/TensorArrayStack/TensorArraySizeV3 map/TensorArrayStack/range/delta*$
_class
loc:@map/TensorArray_1*

Tidx0
�
(map/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map/TensorArray_1map/TensorArrayStack/rangemap/while/Exit_2*
dtype0*%
element_shape:����������*$
_class
loc:@map/TensorArray_1
=
cl/shapeConst*
dtype0*
valueB"�����  
X
clReshape(map/TensorArrayStack/TensorArrayGatherV3cl/shape*
T0*
Tshape0
D
Reshape/shapeConst*
valueB:
���������*
dtype0
K
ReshapeReshapeoutput_batch_cidsReshape/shape*
T0*
Tshape0
T
)SparseSoftmaxCrossEntropyWithLogits/ShapeShapeReshape*
T0*
out_type0
�
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsclReshape*
Tlabels0*
T0
>
map_1/ShapeShapernn/transpose_1*
T0*
out_type0
G
map_1/strided_slice/stackConst*
valueB: *
dtype0
I
map_1/strided_slice/stack_1Const*
dtype0*
valueB:
I
map_1/strided_slice/stack_2Const*
valueB:*
dtype0
�
map_1/strided_sliceStridedSlicemap_1/Shapemap_1/strided_slice/stackmap_1/strided_slice/stack_1map_1/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask 
�
map_1/TensorArrayTensorArrayV3map_1/strided_slice*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*
tensor_array_name *
dtype0
Q
map_1/TensorArrayUnstack/ShapeShapernn/transpose_1*
T0*
out_type0
Z
,map_1/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
valueB: 
\
.map_1/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
valueB:
\
.map_1/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
valueB:
�
&map_1/TensorArrayUnstack/strided_sliceStridedSlicemap_1/TensorArrayUnstack/Shape,map_1/TensorArrayUnstack/strided_slice/stack.map_1/TensorArrayUnstack/strided_slice/stack_1.map_1/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
N
$map_1/TensorArrayUnstack/range/startConst*
value	B : *
dtype0
N
$map_1/TensorArrayUnstack/range/deltaConst*
dtype0*
value	B :
�
map_1/TensorArrayUnstack/rangeRange$map_1/TensorArrayUnstack/range/start&map_1/TensorArrayUnstack/strided_slice$map_1/TensorArrayUnstack/range/delta*

Tidx0
�
@map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3map_1/TensorArraymap_1/TensorArrayUnstack/rangernn/transpose_1map_1/TensorArray:1*
T0*"
_class
loc:@rnn/transpose_1
5
map_1/ConstConst*
value	B : *
dtype0
�
map_1/TensorArray_1TensorArrayV3map_1/strided_slice*
tensor_array_name *
dtype0*
element_shape:*
dynamic_size( *
clear_after_read(*
identical_element_shapes(
G
map_1/while/iteration_counterConst*
value	B : *
dtype0
�
map_1/while/EnterEntermap_1/while/iteration_counter*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*
is_constant( 
�
map_1/while/Enter_1Entermap_1/Const*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*
is_constant( 
�
map_1/while/Enter_2Entermap_1/TensorArray_1:1*
T0*
is_constant( *
parallel_iterations
*)

frame_namemap_1/while/while_context
Z
map_1/while/MergeMergemap_1/while/Entermap_1/while/NextIteration*
N*
T0
`
map_1/while/Merge_1Mergemap_1/while/Enter_1map_1/while/NextIteration_1*
T0*
N
`
map_1/while/Merge_2Mergemap_1/while/Enter_2map_1/while/NextIteration_2*
N*
T0
L
map_1/while/LessLessmap_1/while/Mergemap_1/while/Less/Enter*
T0
�
map_1/while/Less/EnterEntermap_1/strided_slice*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*
is_constant(
P
map_1/while/Less_1Lessmap_1/while/Merge_1map_1/while/Less/Enter*
T0
J
map_1/while/LogicalAnd
LogicalAndmap_1/while/Lessmap_1/while/Less_1
8
map_1/while/LoopCondLoopCondmap_1/while/LogicalAnd
t
map_1/while/SwitchSwitchmap_1/while/Mergemap_1/while/LoopCond*
T0*$
_class
loc:@map_1/while/Merge
z
map_1/while/Switch_1Switchmap_1/while/Merge_1map_1/while/LoopCond*
T0*&
_class
loc:@map_1/while/Merge_1
z
map_1/while/Switch_2Switchmap_1/while/Merge_2map_1/while/LoopCond*
T0*&
_class
loc:@map_1/while/Merge_2
?
map_1/while/IdentityIdentitymap_1/while/Switch:1*
T0
C
map_1/while/Identity_1Identitymap_1/while/Switch_1:1*
T0
C
map_1/while/Identity_2Identitymap_1/while/Switch_2:1*
T0
R
map_1/while/add/yConst^map_1/while/Identity*
value	B :*
dtype0
H
map_1/while/addAddmap_1/while/Identitymap_1/while/add/y*
T0
�
map_1/while/TensorArrayReadV3TensorArrayReadV3#map_1/while/TensorArrayReadV3/Entermap_1/while/Identity_1%map_1/while/TensorArrayReadV3/Enter_1*
dtype0
�
#map_1/while/TensorArrayReadV3/EnterEntermap_1/TensorArray*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
�
%map_1/while/TensorArrayReadV3/Enter_1Enter@map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*
is_constant(
f
map_1/while/transpose/permConst^map_1/while/Identity*
valueB"       *
dtype0
q
map_1/while/transpose	Transposemap_1/while/transpose/Entermap_1/while/transpose/perm*
T0*
Tperm0
�
map_1/while/transpose/EnterEnter output_wordid_embedding_mat/read*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
�
map_1/while/MatMulMatMulmap_1/while/TensorArrayReadV3map_1/while/transpose*
T0*
transpose_a( *
transpose_b( 
N
map_1/while/Add_1Addmap_1/while/MatMulmap_1/while/Add_1/Enter*
T0
�
map_1/while/Add_1/EnterEnter!output_wordid_embedding_bias/read*
T0*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
�
/map_1/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV35map_1/while/TensorArrayWrite/TensorArrayWriteV3/Entermap_1/while/Identity_1map_1/while/Add_1map_1/while/Identity_2*
T0*$
_class
loc:@map_1/while/Add_1
�
5map_1/while/TensorArrayWrite/TensorArrayWriteV3/EnterEntermap_1/TensorArray_1*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
T
map_1/while/add_2/yConst^map_1/while/Identity*
dtype0*
value	B :
N
map_1/while/add_2Addmap_1/while/Identity_1map_1/while/add_2/y*
T0
D
map_1/while/NextIterationNextIterationmap_1/while/add*
T0
H
map_1/while/NextIteration_1NextIterationmap_1/while/add_2*
T0
f
map_1/while/NextIteration_2NextIteration/map_1/while/TensorArrayWrite/TensorArrayWriteV3*
T0
5
map_1/while/ExitExitmap_1/while/Switch*
T0
9
map_1/while/Exit_1Exitmap_1/while/Switch_1*
T0
9
map_1/while/Exit_2Exitmap_1/while/Switch_2*
T0
�
(map_1/TensorArrayStack/TensorArraySizeV3TensorArraySizeV3map_1/TensorArray_1map_1/while/Exit_2*&
_class
loc:@map_1/TensorArray_1
t
"map_1/TensorArrayStack/range/startConst*
dtype0*&
_class
loc:@map_1/TensorArray_1*
value	B : 
t
"map_1/TensorArrayStack/range/deltaConst*&
_class
loc:@map_1/TensorArray_1*
value	B :*
dtype0
�
map_1/TensorArrayStack/rangeRange"map_1/TensorArrayStack/range/start(map_1/TensorArrayStack/TensorArraySizeV3"map_1/TensorArrayStack/range/delta*&
_class
loc:@map_1/TensorArray_1*

Tidx0
�
*map_1/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV3map_1/TensorArray_1map_1/TensorArrayStack/rangemap_1/while/Exit_2*&
_class
loc:@map_1/TensorArray_1*
dtype0*%
element_shape:����������
D
Reshape_1/shapeConst*
dtype0*
valueB"�����  
h
	Reshape_1Reshape*map_1/TensorArrayStack/TensorArrayGatherV3Reshape_1/shape*
T0*
Tshape0
F
Reshape_2/shapeConst*
valueB:
���������*
dtype0
O
	Reshape_2Reshapeoutput_batch_widsReshape_2/shape*
T0*
Tshape0
X
+SparseSoftmaxCrossEntropyWithLogits_1/ShapeShape	Reshape_2*
T0*
out_type0
�
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogits	Reshape_1	Reshape_2*
Tlabels0*
T0
�
AddAddGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*
T0
N
gradients/ShapeShapeAdd*
T0*
_class

loc:@Add*
out_type0
X
gradients/grad_ys_0Const*
_class

loc:@Add*
valueB
 *  �?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*
_class

loc:@Add*

index_type0
`
gradients/f_countConst*#
_class
loc:@map/while/Exit_2*
value	B : *
dtype0
�
gradients/f_count_1Entergradients/f_count*
parallel_iterations
*'

frame_namemap/while/while_context*
T0*#
_class
loc:@map/while/Exit_2*
is_constant( 
}
gradients/MergeMergegradients/f_count_1gradients/NextIteration*
N*
T0*#
_class
loc:@map/while/Exit_2
m
gradients/SwitchSwitchgradients/Mergemap/while/LoopCond*
T0*#
_class
loc:@map/while/Exit_2
s
gradients/Add/yConst^map/while/Identity*
dtype0*#
_class
loc:@map/while/Exit_2*
value	B :
g
gradients/AddAddgradients/Switch:1gradients/Add/y*
T0*#
_class
loc:@map/while/Exit_2
�
gradients/NextIterationNextIterationgradients/AddA^gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPushV23^gradients/map/while/MatMul_grad/MatMul/StackPushV25^gradients/map/while/MatMul_grad/MatMul_1/StackPushV2[^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2*
T0*#
_class
loc:@map/while/Exit_2
[
gradients/f_count_2Exitgradients/Switch*
T0*#
_class
loc:@map/while/Exit_2
`
gradients/b_countConst*#
_class
loc:@map/while/Exit_2*
value	B :*
dtype0
�
gradients/b_count_1Entergradients/f_count_2*
T0*#
_class
loc:@map/while/Exit_2*
is_constant( *
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
gradients/Merge_1Mergegradients/b_count_1gradients/NextIteration_1*
N*
T0*#
_class
loc:@map/while/Exit_2
�
gradients/GreaterEqualGreaterEqualgradients/Merge_1gradients/GreaterEqual/Enter*
T0*#
_class
loc:@map/while/Exit_2
�
gradients/GreaterEqual/EnterEntergradients/b_count*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context*
T0*#
_class
loc:@map/while/Exit_2*
is_constant(
\
gradients/b_count_2LoopCondgradients/GreaterEqual*#
_class
loc:@map/while/Exit_2
r
gradients/Switch_1Switchgradients/Merge_1gradients/b_count_2*
T0*#
_class
loc:@map/while/Exit_2
v
gradients/SubSubgradients/Switch_1:1gradients/GreaterEqual/Enter*
T0*#
_class
loc:@map/while/Exit_2
�
gradients/NextIteration_1NextIterationgradients/SubV^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*#
_class
loc:@map/while/Exit_2
]
gradients/b_count_3Exitgradients/Switch_1*
T0*#
_class
loc:@map/while/Exit_2
d
gradients/f_count_3Const*%
_class
loc:@map_1/while/Exit_2*
value	B : *
dtype0
�
gradients/f_count_4Entergradients/f_count_3*
T0*%
_class
loc:@map_1/while/Exit_2*
is_constant( *
parallel_iterations
*)

frame_namemap_1/while/while_context
�
gradients/Merge_2Mergegradients/f_count_4gradients/NextIteration_2*
T0*%
_class
loc:@map_1/while/Exit_2*
N
u
gradients/Switch_2Switchgradients/Merge_2map_1/while/LoopCond*
T0*%
_class
loc:@map_1/while/Exit_2
y
gradients/Add_1/yConst^map_1/while/Identity*
dtype0*%
_class
loc:@map_1/while/Exit_2*
value	B :
o
gradients/Add_1Addgradients/Switch_2:1gradients/Add_1/y*
T0*%
_class
loc:@map_1/while/Exit_2
�
gradients/NextIteration_2NextIterationgradients/Add_1C^gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPushV25^gradients/map_1/while/MatMul_grad/MatMul/StackPushV27^gradients/map_1/while/MatMul_grad/MatMul_1/StackPushV2]^gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2*
T0*%
_class
loc:@map_1/while/Exit_2
_
gradients/f_count_5Exitgradients/Switch_2*
T0*%
_class
loc:@map_1/while/Exit_2
d
gradients/b_count_4Const*%
_class
loc:@map_1/while/Exit_2*
value	B :*
dtype0
�
gradients/b_count_5Entergradients/f_count_5*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context*
T0*%
_class
loc:@map_1/while/Exit_2*
is_constant( 
�
gradients/Merge_3Mergegradients/b_count_5gradients/NextIteration_3*
T0*%
_class
loc:@map_1/while/Exit_2*
N
�
gradients/GreaterEqual_1GreaterEqualgradients/Merge_3gradients/GreaterEqual_1/Enter*
T0*%
_class
loc:@map_1/while/Exit_2
�
gradients/GreaterEqual_1/EnterEntergradients/b_count_4*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context*
T0*%
_class
loc:@map_1/while/Exit_2*
is_constant(
`
gradients/b_count_6LoopCondgradients/GreaterEqual_1*%
_class
loc:@map_1/while/Exit_2
t
gradients/Switch_3Switchgradients/Merge_3gradients/b_count_6*
T0*%
_class
loc:@map_1/while/Exit_2
|
gradients/Sub_1Subgradients/Switch_3:1gradients/GreaterEqual_1/Enter*
T0*%
_class
loc:@map_1/while/Exit_2
�
gradients/NextIteration_3NextIterationgradients/Sub_1X^gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*%
_class
loc:@map_1/while/Exit_2
_
gradients/b_count_7Exitgradients/Switch_3*
T0*%
_class
loc:@map_1/while/Exit_2
b
gradients/f_count_6Const*
dtype0*#
_class
loc:@rnn/while/Exit_2*
value	B : 
�
gradients/f_count_7Entergradients/f_count_6*
T0*#
_class
loc:@rnn/while/Exit_2*
is_constant( *
parallel_iterations *'

frame_namernn/while/while_context
�
gradients/Merge_4Mergegradients/f_count_7gradients/NextIteration_4*
T0*#
_class
loc:@rnn/while/Exit_2*
N
q
gradients/Switch_4Switchgradients/Merge_4rnn/while/LoopCond*
T0*#
_class
loc:@rnn/while/Exit_2
u
gradients/Add_2/yConst^rnn/while/Identity*#
_class
loc:@rnn/while/Exit_2*
value	B :*
dtype0
m
gradients/Add_2Addgradients/Switch_4:1gradients/Add_2/y*
T0*#
_class
loc:@rnn/while/Exit_2
�'
gradients/NextIteration_4NextIterationgradients/Add_25^gradients/rnn/while/Select_1_grad/Select/StackPushV29^gradients/rnn/while/Select_1_grad/zeros_like/StackPushV29^gradients/rnn/while/Select_2_grad/zeros_like/StackPushV29^gradients/rnn/while/Select_3_grad/zeros_like/StackPushV29^gradients/rnn/while/Select_4_grad/zeros_like/StackPushV2[^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPushV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPushV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPushV2U^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPushV2U^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPushV2S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPushV2a^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1O^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPushV2Q^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPushV2Y^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2W^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPushV2U^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2g^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPushV2U^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPushV2c^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2e^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1S^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPushV2*
T0*#
_class
loc:@rnn/while/Exit_2
]
gradients/f_count_8Exitgradients/Switch_4*
T0*#
_class
loc:@rnn/while/Exit_2
b
gradients/b_count_8Const*#
_class
loc:@rnn/while/Exit_2*
value	B :*
dtype0
�
gradients/b_count_9Entergradients/f_count_8*
T0*#
_class
loc:@rnn/while/Exit_2*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
gradients/Merge_5Mergegradients/b_count_9gradients/NextIteration_5*
N*
T0*#
_class
loc:@rnn/while/Exit_2
�
gradients/GreaterEqual_2GreaterEqualgradients/Merge_5gradients/GreaterEqual_2/Enter*
T0*#
_class
loc:@rnn/while/Exit_2
�
gradients/GreaterEqual_2/EnterEntergradients/b_count_8*
T0*#
_class
loc:@rnn/while/Exit_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
_
gradients/b_count_10LoopCondgradients/GreaterEqual_2*#
_class
loc:@rnn/while/Exit_2
s
gradients/Switch_5Switchgradients/Merge_5gradients/b_count_10*
T0*#
_class
loc:@rnn/while/Exit_2
z
gradients/Sub_2Subgradients/Switch_5:1gradients/GreaterEqual_2/Enter*
T0*#
_class
loc:@rnn/while/Exit_2
�
gradients/NextIteration_5NextIterationgradients/Sub_2V^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_sync*
T0*#
_class
loc:@rnn/while/Exit_2
^
gradients/b_count_11Exitgradients/Switch_5*
T0*#
_class
loc:@rnn/while/Exit_2
�
gradients/Add_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_class

loc:@Add*
out_type0
�
gradients/Add_grad/Shape_1ShapeISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*
T0*
_class

loc:@Add*
out_type0
�
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*
_class

loc:@Add
�
gradients/Add_grad/SumSumgradients/Fill(gradients/Add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*
_class

loc:@Add
�
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
_class

loc:@Add*
Tshape0
�
gradients/Add_grad/Sum_1Sumgradients/Fill*gradients/Add_grad/BroadcastGradientArgs:1*
T0*
_class

loc:@Add*
	keep_dims( *

Tidx0
�
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
_class

loc:@Add*
Tshape0
�
gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*Z
_classP
NLloc:@SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*Z
_classP
NLloc:@SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*Z
_classP
NLloc:@SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
valueB :
���������*
dtype0
�
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Add_grad/Reshapeegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*Z
_classP
NLloc:@SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*

Tdim0
�
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*Z
_classP
NLloc:@SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits
�
gradients/zeros_like_1	ZerosLikeKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*\
_classR
PNloc:@SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits
�
hgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientKSparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits:1*
T0*\
_classR
PNloc:@SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*�
message��Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
�
ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*\
_classR
PNloc:@SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits*
valueB :
���������*
dtype0
�
cgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Add_grad/Reshape_1ggradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*

Tdim0*
T0*\
_classR
PNloc:@SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits
�
\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulcgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimshgradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*
T0*\
_classR
PNloc:@SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits
z
gradients/cl_grad/ShapeShape(map/TensorArrayStack/TensorArrayGatherV3*
T0*
_class
	loc:@cl*
out_type0
�
gradients/cl_grad/ReshapeReshapeZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulgradients/cl_grad/Shape*
T0*
_class
	loc:@cl*
Tshape0
�
gradients/Reshape_1_grad/ShapeShape*map_1/TensorArrayStack/TensorArrayGatherV3*
T0*
_class
loc:@Reshape_1*
out_type0
�
 gradients/Reshape_1_grad/ReshapeReshape\gradients/SparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits_grad/mulgradients/Reshape_1_grad/Shape*
T0*
_class
loc:@Reshape_1*
Tshape0
�
Ygradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3map/TensorArray_1map/while/Exit_2*$
_class
loc:@map/TensorArray_1*
source	gradients
�
Ugradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitymap/while/Exit_2Z^gradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*$
_class
loc:@map/TensorArray_1
�
_gradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3map/TensorArrayStack/rangegradients/cl_grad/ReshapeUgradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*$
_class
loc:@map/TensorArray_1
�
[gradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3map_1/TensorArray_1map_1/while/Exit_2*&
_class
loc:@map_1/TensorArray_1*
source	gradients
�
Wgradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentitymap_1/while/Exit_2\^gradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*&
_class
loc:@map_1/TensorArray_1
�
agradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3[gradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3map_1/TensorArrayStack/range gradients/Reshape_1_grad/ReshapeWgradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*&
_class
loc:@map_1/TensorArray_1
�
&gradients/map/while/Exit_2_grad/b_exitEnter_gradients/map/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*#
_class
loc:@map/while/Exit_2*
is_constant( *
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
(gradients/map_1/while/Exit_2_grad/b_exitEnteragradients/map_1/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*%
_class
loc:@map_1/while/Exit_2*
is_constant( *
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
*gradients/map/while/Switch_2_grad/b_switchMerge&gradients/map/while/Exit_2_grad/b_exit1gradients/map/while/Switch_2_grad_1/NextIteration*
T0*$
_class
loc:@map/while/Merge_2*
N
�
,gradients/map_1/while/Switch_2_grad/b_switchMerge(gradients/map_1/while/Exit_2_grad/b_exit3gradients/map_1/while/Switch_2_grad_1/NextIteration*
T0*&
_class
loc:@map_1/while/Merge_2*
N
�
'gradients/map/while/Merge_2_grad/SwitchSwitch*gradients/map/while/Switch_2_grad/b_switchgradients/b_count_2*
T0*$
_class
loc:@map/while/Merge_2
�
)gradients/map_1/while/Merge_2_grad/SwitchSwitch,gradients/map_1/while/Switch_2_grad/b_switchgradients/b_count_6*
T0*&
_class
loc:@map_1/while/Merge_2
�
%gradients/map/while/Enter_2_grad/ExitExit'gradients/map/while/Merge_2_grad/Switch*
T0*$
_class
loc:@map/while/Enter_2
�
'gradients/map_1/while/Enter_2_grad/ExitExit)gradients/map_1/while/Merge_2_grad/Switch*
T0*&
_class
loc:@map_1/while/Enter_2
�
^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter)gradients/map/while/Merge_2_grad/Switch:1*"
_class
loc:@map/while/Add_1*
source	gradients
�
dgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntermap/TensorArray_1*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context*
T0*"
_class
loc:@map/while/Add_1*
is_constant(
�
Zgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity)gradients/map/while/Merge_2_grad/Switch:1_^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*"
_class
loc:@map/while/Add_1
�
Ngradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*"
_class
loc:@map/while/Add_1*
dtype0
�
Tgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*=
_class3
1loc:@map/while/Add_1loc:@map/while/Identity_1*
valueB :
���������*
dtype0
�
Tgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Tgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*=
_class3
1loc:@map/while/Add_1loc:@map/while/Identity_1*

stack_name *
	elem_type0
�
Tgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*"
_class
loc:@map/while/Add_1*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
Zgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Entermap/while/Identity_1^gradients/Add*
T0*"
_class
loc:@map/while/Add_1*
swap_memory( 
�
Ygradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub*
	elem_type0*"
_class
loc:@map/while/Add_1
�
_gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context*
T0*"
_class
loc:@map/while/Add_1*
is_constant(
�
Ugradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger@^gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV22^gradients/map/while/MatMul_grad/MatMul/StackPopV24^gradients/map/while/MatMul_grad/MatMul_1/StackPopV2Z^gradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2*"
_class
loc:@map/while/Add_1
�
`gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3fgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter+gradients/map_1/while/Merge_2_grad/Switch:1*$
_class
loc:@map_1/while/Add_1*
source	gradients
�
fgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntermap_1/TensorArray_1*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
\gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity+gradients/map_1/while/Merge_2_grad/Switch:1a^gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*$
_class
loc:@map_1/while/Add_1
�
Pgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3`gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3[gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2\gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*
dtype0*$
_class
loc:@map_1/while/Add_1
�
Vgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*A
_class7
5loc:@map_1/while/Add_1loc:@map_1/while/Identity_1*
valueB :
���������*
dtype0
�
Vgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Vgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*

stack_name *
	elem_type0*A
_class7
5loc:@map_1/while/Add_1loc:@map_1/while/Identity_1
�
Vgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterVgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(
�
\gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Vgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Entermap_1/while/Identity_1^gradients/Add_1*
T0*$
_class
loc:@map_1/while/Add_1*
swap_memory( 
�
[gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2agradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub_1*$
_class
loc:@map_1/while/Add_1*
	elem_type0
�
agradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterVgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
Wgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTriggerB^gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV24^gradients/map_1/while/MatMul_grad/MatMul/StackPopV26^gradients/map_1/while/MatMul_grad/MatMul_1/StackPopV2\^gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2*$
_class
loc:@map_1/while/Add_1
|
$gradients/map/while/Add_1_grad/ShapeShapemap/while/MatMul*
T0*"
_class
loc:@map/while/Add_1*
out_type0
�
&gradients/map/while/Add_1_grad/Shape_1Const^gradients/Sub*
dtype0*"
_class
loc:@map/while/Add_1*
valueB:�
�
4gradients/map/while/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgs?gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV2&gradients/map/while/Add_1_grad/Shape_1*
T0*"
_class
loc:@map/while/Add_1
�
:gradients/map/while/Add_1_grad/BroadcastGradientArgs/ConstConst*"
_class
loc:@map/while/Add_1*
valueB :
���������*
dtype0
�
:gradients/map/while/Add_1_grad/BroadcastGradientArgs/f_accStackV2:gradients/map/while/Add_1_grad/BroadcastGradientArgs/Const*"
_class
loc:@map/while/Add_1*

stack_name *
	elem_type0
�
:gradients/map/while/Add_1_grad/BroadcastGradientArgs/EnterEnter:gradients/map/while/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*"
_class
loc:@map/while/Add_1*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
@gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2:gradients/map/while/Add_1_grad/BroadcastGradientArgs/Enter$gradients/map/while/Add_1_grad/Shape^gradients/Add*
T0*"
_class
loc:@map/while/Add_1*
swap_memory( 
�
?gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Egradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub*
	elem_type0*"
_class
loc:@map/while/Add_1
�
Egradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter:gradients/map/while/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*"
_class
loc:@map/while/Add_1*
is_constant(*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
"gradients/map/while/Add_1_grad/SumSumNgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV34gradients/map/while/Add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*"
_class
loc:@map/while/Add_1
�
&gradients/map/while/Add_1_grad/ReshapeReshape"gradients/map/while/Add_1_grad/Sum?gradients/map/while/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*"
_class
loc:@map/while/Add_1*
Tshape0
�
$gradients/map/while/Add_1_grad/Sum_1SumNgradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV36gradients/map/while/Add_1_grad/BroadcastGradientArgs:1*
T0*"
_class
loc:@map/while/Add_1*
	keep_dims( *

Tidx0
�
(gradients/map/while/Add_1_grad/Reshape_1Reshape$gradients/map/while/Add_1_grad/Sum_1&gradients/map/while/Add_1_grad/Shape_1*
T0*"
_class
loc:@map/while/Add_1*
Tshape0
�
&gradients/map_1/while/Add_1_grad/ShapeShapemap_1/while/MatMul*
T0*$
_class
loc:@map_1/while/Add_1*
out_type0
�
(gradients/map_1/while/Add_1_grad/Shape_1Const^gradients/Sub_1*$
_class
loc:@map_1/while/Add_1*
valueB:�*
dtype0
�
6gradients/map_1/while/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsAgradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV2(gradients/map_1/while/Add_1_grad/Shape_1*
T0*$
_class
loc:@map_1/while/Add_1
�
<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/ConstConst*$
_class
loc:@map_1/while/Add_1*
valueB :
���������*
dtype0
�
<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/f_accStackV2<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/Const*$
_class
loc:@map_1/while/Add_1*

stack_name *
	elem_type0
�
<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/EnterEnter<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
�
Bgradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/Enter&gradients/map_1/while/Add_1_grad/Shape^gradients/Add_1*
T0*$
_class
loc:@map_1/while/Add_1*
swap_memory( 
�
Agradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2Ggradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_1*$
_class
loc:@map_1/while/Add_1*
	elem_type0
�
Ggradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter<gradients/map_1/while/Add_1_grad/BroadcastGradientArgs/f_acc*
T0*$
_class
loc:@map_1/while/Add_1*
is_constant(*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
$gradients/map_1/while/Add_1_grad/SumSumPgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV36gradients/map_1/while/Add_1_grad/BroadcastGradientArgs*
T0*$
_class
loc:@map_1/while/Add_1*
	keep_dims( *

Tidx0
�
(gradients/map_1/while/Add_1_grad/ReshapeReshape$gradients/map_1/while/Add_1_grad/SumAgradients/map_1/while/Add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*$
_class
loc:@map_1/while/Add_1*
Tshape0
�
&gradients/map_1/while/Add_1_grad/Sum_1SumPgradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV38gradients/map_1/while/Add_1_grad/BroadcastGradientArgs:1*
T0*$
_class
loc:@map_1/while/Add_1*
	keep_dims( *

Tidx0
�
*gradients/map_1/while/Add_1_grad/Reshape_1Reshape&gradients/map_1/while/Add_1_grad/Sum_1(gradients/map_1/while/Add_1_grad/Shape_1*
T0*$
_class
loc:@map_1/while/Add_1*
Tshape0
�
&gradients/map/while/MatMul_grad/MatMulMatMul&gradients/map/while/Add_1_grad/Reshape1gradients/map/while/MatMul_grad/MatMul/StackPopV2*
T0*#
_class
loc:@map/while/MatMul*
transpose_a( *
transpose_b(
�
,gradients/map/while/MatMul_grad/MatMul/ConstConst*=
_class3
1loc:@map/while/MatMulloc:@map/while/transpose*
valueB :
���������*
dtype0
�
,gradients/map/while/MatMul_grad/MatMul/f_accStackV2,gradients/map/while/MatMul_grad/MatMul/Const*=
_class3
1loc:@map/while/MatMulloc:@map/while/transpose*

stack_name *
	elem_type0
�
,gradients/map/while/MatMul_grad/MatMul/EnterEnter,gradients/map/while/MatMul_grad/MatMul/f_acc*
parallel_iterations
*'

frame_namemap/while/while_context*
T0*#
_class
loc:@map/while/MatMul*
is_constant(
�
2gradients/map/while/MatMul_grad/MatMul/StackPushV2StackPushV2,gradients/map/while/MatMul_grad/MatMul/Entermap/while/transpose^gradients/Add*
T0*#
_class
loc:@map/while/MatMul*
swap_memory( 
�
1gradients/map/while/MatMul_grad/MatMul/StackPopV2
StackPopV27gradients/map/while/MatMul_grad/MatMul/StackPopV2/Enter^gradients/Sub*
	elem_type0*#
_class
loc:@map/while/MatMul
�
7gradients/map/while/MatMul_grad/MatMul/StackPopV2/EnterEnter,gradients/map/while/MatMul_grad/MatMul/f_acc*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context*
T0*#
_class
loc:@map/while/MatMul*
is_constant(
�
(gradients/map/while/MatMul_grad/MatMul_1MatMul3gradients/map/while/MatMul_grad/MatMul_1/StackPopV2&gradients/map/while/Add_1_grad/Reshape*
transpose_b( *
T0*#
_class
loc:@map/while/MatMul*
transpose_a(
�
.gradients/map/while/MatMul_grad/MatMul_1/ConstConst*E
_class;
9loc:@map/while/MatMul loc:@map/while/TensorArrayReadV3*
valueB :
���������*
dtype0
�
.gradients/map/while/MatMul_grad/MatMul_1/f_accStackV2.gradients/map/while/MatMul_grad/MatMul_1/Const*
	elem_type0*E
_class;
9loc:@map/while/MatMul loc:@map/while/TensorArrayReadV3*

stack_name 
�
.gradients/map/while/MatMul_grad/MatMul_1/EnterEnter.gradients/map/while/MatMul_grad/MatMul_1/f_acc*
T0*#
_class
loc:@map/while/MatMul*
is_constant(*
parallel_iterations
*'

frame_namemap/while/while_context
�
4gradients/map/while/MatMul_grad/MatMul_1/StackPushV2StackPushV2.gradients/map/while/MatMul_grad/MatMul_1/Entermap/while/TensorArrayReadV3^gradients/Add*
T0*#
_class
loc:@map/while/MatMul*
swap_memory( 
�
3gradients/map/while/MatMul_grad/MatMul_1/StackPopV2
StackPopV29gradients/map/while/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub*
	elem_type0*#
_class
loc:@map/while/MatMul
�
9gradients/map/while/MatMul_grad/MatMul_1/StackPopV2/EnterEnter.gradients/map/while/MatMul_grad/MatMul_1/f_acc*
T0*#
_class
loc:@map/while/MatMul*
is_constant(*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
*gradients/map/while/Add_1/Enter_grad/b_accConst*(
_class
loc:@map/while/Add_1/Enter*
valueB�*    *
dtype0
�
,gradients/map/while/Add_1/Enter_grad/b_acc_1Enter*gradients/map/while/Add_1/Enter_grad/b_acc*
T0*(
_class
loc:@map/while/Add_1/Enter*
is_constant( *
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
,gradients/map/while/Add_1/Enter_grad/b_acc_2Merge,gradients/map/while/Add_1/Enter_grad/b_acc_12gradients/map/while/Add_1/Enter_grad/NextIteration*
T0*(
_class
loc:@map/while/Add_1/Enter*
N
�
+gradients/map/while/Add_1/Enter_grad/SwitchSwitch,gradients/map/while/Add_1/Enter_grad/b_acc_2gradients/b_count_2*
T0*(
_class
loc:@map/while/Add_1/Enter
�
(gradients/map/while/Add_1/Enter_grad/AddAdd-gradients/map/while/Add_1/Enter_grad/Switch:1(gradients/map/while/Add_1_grad/Reshape_1*
T0*(
_class
loc:@map/while/Add_1/Enter
�
2gradients/map/while/Add_1/Enter_grad/NextIterationNextIteration(gradients/map/while/Add_1/Enter_grad/Add*
T0*(
_class
loc:@map/while/Add_1/Enter
�
,gradients/map/while/Add_1/Enter_grad/b_acc_3Exit+gradients/map/while/Add_1/Enter_grad/Switch*
T0*(
_class
loc:@map/while/Add_1/Enter
�
1gradients/map/while/Switch_2_grad_1/NextIterationNextIteration)gradients/map/while/Merge_2_grad/Switch:1*
T0*$
_class
loc:@map/while/Merge_2
�
(gradients/map_1/while/MatMul_grad/MatMulMatMul(gradients/map_1/while/Add_1_grad/Reshape3gradients/map_1/while/MatMul_grad/MatMul/StackPopV2*
transpose_b(*
T0*%
_class
loc:@map_1/while/MatMul*
transpose_a( 
�
.gradients/map_1/while/MatMul_grad/MatMul/ConstConst*
dtype0*A
_class7
5loc:@map_1/while/MatMulloc:@map_1/while/transpose*
valueB :
���������
�
.gradients/map_1/while/MatMul_grad/MatMul/f_accStackV2.gradients/map_1/while/MatMul_grad/MatMul/Const*

stack_name *
	elem_type0*A
_class7
5loc:@map_1/while/MatMulloc:@map_1/while/transpose
�
.gradients/map_1/while/MatMul_grad/MatMul/EnterEnter.gradients/map_1/while/MatMul_grad/MatMul/f_acc*
T0*%
_class
loc:@map_1/while/MatMul*
is_constant(*
parallel_iterations
*)

frame_namemap_1/while/while_context
�
4gradients/map_1/while/MatMul_grad/MatMul/StackPushV2StackPushV2.gradients/map_1/while/MatMul_grad/MatMul/Entermap_1/while/transpose^gradients/Add_1*
T0*%
_class
loc:@map_1/while/MatMul*
swap_memory( 
�
3gradients/map_1/while/MatMul_grad/MatMul/StackPopV2
StackPopV29gradients/map_1/while/MatMul_grad/MatMul/StackPopV2/Enter^gradients/Sub_1*
	elem_type0*%
_class
loc:@map_1/while/MatMul
�
9gradients/map_1/while/MatMul_grad/MatMul/StackPopV2/EnterEnter.gradients/map_1/while/MatMul_grad/MatMul/f_acc*
T0*%
_class
loc:@map_1/while/MatMul*
is_constant(*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
*gradients/map_1/while/MatMul_grad/MatMul_1MatMul5gradients/map_1/while/MatMul_grad/MatMul_1/StackPopV2(gradients/map_1/while/Add_1_grad/Reshape*
transpose_a(*
transpose_b( *
T0*%
_class
loc:@map_1/while/MatMul
�
0gradients/map_1/while/MatMul_grad/MatMul_1/ConstConst*
dtype0*I
_class?
=loc:@map_1/while/MatMul"loc:@map_1/while/TensorArrayReadV3*
valueB :
���������
�
0gradients/map_1/while/MatMul_grad/MatMul_1/f_accStackV20gradients/map_1/while/MatMul_grad/MatMul_1/Const*I
_class?
=loc:@map_1/while/MatMul"loc:@map_1/while/TensorArrayReadV3*

stack_name *
	elem_type0
�
0gradients/map_1/while/MatMul_grad/MatMul_1/EnterEnter0gradients/map_1/while/MatMul_grad/MatMul_1/f_acc*
parallel_iterations
*)

frame_namemap_1/while/while_context*
T0*%
_class
loc:@map_1/while/MatMul*
is_constant(
�
6gradients/map_1/while/MatMul_grad/MatMul_1/StackPushV2StackPushV20gradients/map_1/while/MatMul_grad/MatMul_1/Entermap_1/while/TensorArrayReadV3^gradients/Add_1*
T0*%
_class
loc:@map_1/while/MatMul*
swap_memory( 
�
5gradients/map_1/while/MatMul_grad/MatMul_1/StackPopV2
StackPopV2;gradients/map_1/while/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_1*%
_class
loc:@map_1/while/MatMul*
	elem_type0
�
;gradients/map_1/while/MatMul_grad/MatMul_1/StackPopV2/EnterEnter0gradients/map_1/while/MatMul_grad/MatMul_1/f_acc*
T0*%
_class
loc:@map_1/while/MatMul*
is_constant(*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
,gradients/map_1/while/Add_1/Enter_grad/b_accConst**
_class 
loc:@map_1/while/Add_1/Enter*
valueB�*    *
dtype0
�
.gradients/map_1/while/Add_1/Enter_grad/b_acc_1Enter,gradients/map_1/while/Add_1/Enter_grad/b_acc*
T0**
_class 
loc:@map_1/while/Add_1/Enter*
is_constant( *
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
.gradients/map_1/while/Add_1/Enter_grad/b_acc_2Merge.gradients/map_1/while/Add_1/Enter_grad/b_acc_14gradients/map_1/while/Add_1/Enter_grad/NextIteration*
N*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
-gradients/map_1/while/Add_1/Enter_grad/SwitchSwitch.gradients/map_1/while/Add_1/Enter_grad/b_acc_2gradients/b_count_6*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
*gradients/map_1/while/Add_1/Enter_grad/AddAdd/gradients/map_1/while/Add_1/Enter_grad/Switch:1*gradients/map_1/while/Add_1_grad/Reshape_1*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
4gradients/map_1/while/Add_1/Enter_grad/NextIterationNextIteration*gradients/map_1/while/Add_1/Enter_grad/Add*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
.gradients/map_1/while/Add_1/Enter_grad/b_acc_3Exit-gradients/map_1/while/Add_1/Enter_grad/Switch*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
3gradients/map_1/while/Switch_2_grad_1/NextIterationNextIteration+gradients/map_1/while/Merge_2_grad/Switch:1*
T0*&
_class
loc:@map_1/while/Merge_2
�
Lgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Rgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterTgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub*V
_classL
J loc:@map/while/TensorArrayReadV3&loc:@map/while/TensorArrayReadV3/Enter*
source	gradients
�
Rgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntermap/TensorArray*
T0*V
_classL
J loc:@map/while/TensorArrayReadV3&loc:@map/while/TensorArrayReadV3/Enter*
is_constant(*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
Tgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter>map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*V
_classL
J loc:@map/while/TensorArrayReadV3&loc:@map/while/TensorArrayReadV3/Enter*
is_constant(*
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
Hgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityTgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1M^gradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*V
_classL
J loc:@map/while/TensorArrayReadV3&loc:@map/while/TensorArrayReadV3/Enter
�
Ngradients/map/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Lgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/map/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2&gradients/map/while/MatMul_grad/MatMulHgradients/map/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*.
_class$
" loc:@map/while/TensorArrayReadV3
�
4gradients/map/while/transpose_grad/InvertPermutationInvertPermutation:gradients/map/while/transpose_grad/InvertPermutation/Const*
T0*&
_class
loc:@map/while/transpose
�
:gradients/map/while/transpose_grad/InvertPermutation/ConstConst^gradients/Sub*&
_class
loc:@map/while/transpose*
valueB"       *
dtype0
�
,gradients/map/while/transpose_grad/transpose	Transpose(gradients/map/while/MatMul_grad/MatMul_14gradients/map/while/transpose_grad/InvertPermutation*
T0*&
_class
loc:@map/while/transpose*
Tperm0
�
Ngradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Tgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterVgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub_1*Z
_classP
N"loc:@map_1/while/TensorArrayReadV3(loc:@map_1/while/TensorArrayReadV3/Enter*
source	gradients
�
Tgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEntermap_1/TensorArray*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context*
T0*Z
_classP
N"loc:@map_1/while/TensorArrayReadV3(loc:@map_1/while/TensorArrayReadV3/Enter*
is_constant(
�
Vgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter@map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context*
T0*Z
_classP
N"loc:@map_1/while/TensorArrayReadV3(loc:@map_1/while/TensorArrayReadV3/Enter*
is_constant(
�
Jgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityVgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1O^gradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*Z
_classP
N"loc:@map_1/while/TensorArrayReadV3(loc:@map_1/while/TensorArrayReadV3/Enter
�
Pgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Ngradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3[gradients/map_1/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2(gradients/map_1/while/MatMul_grad/MatMulJgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*0
_class&
$"loc:@map_1/while/TensorArrayReadV3
�
6gradients/map_1/while/transpose_grad/InvertPermutationInvertPermutation<gradients/map_1/while/transpose_grad/InvertPermutation/Const*
T0*(
_class
loc:@map_1/while/transpose
�
<gradients/map_1/while/transpose_grad/InvertPermutation/ConstConst^gradients/Sub_1*(
_class
loc:@map_1/while/transpose*
valueB"       *
dtype0
�
.gradients/map_1/while/transpose_grad/transpose	Transpose*gradients/map_1/while/MatMul_grad/MatMul_16gradients/map_1/while/transpose_grad/InvertPermutation*
Tperm0*
T0*(
_class
loc:@map_1/while/transpose
�
8gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_accConst*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1*
valueB
 *    *
dtype0
�
:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter8gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1*
is_constant( *
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_1@gradients/map/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1*
N
�
9gradients/map/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_2*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1
�
6gradients/map/while/TensorArrayReadV3/Enter_1_grad/AddAdd;gradients/map/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ngradients/map/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1
�
@gradients/map/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration6gradients/map/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1
�
:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit9gradients/map/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*6
_class,
*(loc:@map/while/TensorArrayReadV3/Enter_1
�
.gradients/map/while/transpose/Enter_grad/b_accConst*
dtype0*,
_class"
 loc:@map/while/transpose/Enter*
valueB
��*    
�
0gradients/map/while/transpose/Enter_grad/b_acc_1Enter.gradients/map/while/transpose/Enter_grad/b_acc*
T0*,
_class"
 loc:@map/while/transpose/Enter*
is_constant( *
parallel_iterations
*1

frame_name#!gradients/map/while/while_context
�
0gradients/map/while/transpose/Enter_grad/b_acc_2Merge0gradients/map/while/transpose/Enter_grad/b_acc_16gradients/map/while/transpose/Enter_grad/NextIteration*
T0*,
_class"
 loc:@map/while/transpose/Enter*
N
�
/gradients/map/while/transpose/Enter_grad/SwitchSwitch0gradients/map/while/transpose/Enter_grad/b_acc_2gradients/b_count_2*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
,gradients/map/while/transpose/Enter_grad/AddAdd1gradients/map/while/transpose/Enter_grad/Switch:1,gradients/map/while/transpose_grad/transpose*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
6gradients/map/while/transpose/Enter_grad/NextIterationNextIteration,gradients/map/while/transpose/Enter_grad/Add*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
0gradients/map/while/transpose/Enter_grad/b_acc_3Exit/gradients/map/while/transpose/Enter_grad/Switch*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
:gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_accConst*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1*
valueB
 *    *
dtype0
�
<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter:gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1*
is_constant( *
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Bgradients/map_1/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1*
N
�
;gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_6*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1
�
8gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/AddAdd=gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/Switch:1Pgradients/map_1/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1
�
Bgradients/map_1/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration8gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1
�
<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit;gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*8
_class.
,*loc:@map_1/while/TensorArrayReadV3/Enter_1
�
0gradients/map_1/while/transpose/Enter_grad/b_accConst*
dtype0*.
_class$
" loc:@map_1/while/transpose/Enter*
valueB
��*    
�
2gradients/map_1/while/transpose/Enter_grad/b_acc_1Enter0gradients/map_1/while/transpose/Enter_grad/b_acc*
T0*.
_class$
" loc:@map_1/while/transpose/Enter*
is_constant( *
parallel_iterations
*3

frame_name%#gradients/map_1/while/while_context
�
2gradients/map_1/while/transpose/Enter_grad/b_acc_2Merge2gradients/map_1/while/transpose/Enter_grad/b_acc_18gradients/map_1/while/transpose/Enter_grad/NextIteration*
N*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
1gradients/map_1/while/transpose/Enter_grad/SwitchSwitch2gradients/map_1/while/transpose/Enter_grad/b_acc_2gradients/b_count_6*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
.gradients/map_1/while/transpose/Enter_grad/AddAdd3gradients/map_1/while/transpose/Enter_grad/Switch:1.gradients/map_1/while/transpose_grad/transpose*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
8gradients/map_1/while/transpose/Enter_grad/NextIterationNextIteration.gradients/map_1/while/transpose/Enter_grad/Add*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
2gradients/map_1/while/transpose/Enter_grad/b_acc_3Exit1gradients/map_1/while/transpose/Enter_grad/Switch*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
ogradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3map/TensorArray:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*8
_class.
,loc:@map/TensorArrayloc:@rnn/transpose_1*
source	gradients
�
kgradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity:gradients/map/while/TensorArrayReadV3/Enter_1_grad/b_acc_3p^gradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*8
_class.
,loc:@map/TensorArrayloc:@rnn/transpose_1
�
agradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ogradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3map/TensorArrayUnstack/rangekgradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:*"
_class
loc:@rnn/transpose_1*
dtype0
�
qgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3map_1/TensorArray<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*:
_class0
.loc:@map_1/TensorArrayloc:@rnn/transpose_1*
source	gradients
�
mgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity<gradients/map_1/while/TensorArrayReadV3/Enter_1_grad/b_acc_3r^gradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*:
_class0
.loc:@map_1/TensorArrayloc:@rnn/transpose_1
�
cgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3qgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3map_1/TensorArrayUnstack/rangemgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*"
_class
loc:@rnn/transpose_1*
dtype0*
element_shape:
�
gradients/AddNAddNagradients/map/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3cgradients/map_1/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3*
N*
T0*"
_class
loc:@rnn/transpose_1
�
0gradients/rnn/transpose_1_grad/InvertPermutationInvertPermutationrnn/concat_2*
T0*"
_class
loc:@rnn/transpose_1
�
(gradients/rnn/transpose_1_grad/transpose	Transposegradients/AddN0gradients/rnn/transpose_1_grad/InvertPermutation*
T0*"
_class
loc:@rnn/transpose_1*
Tperm0
�
Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArrayrnn/while/Exit_2*"
_class
loc:@rnn/TensorArray*
source	gradients
�
Ugradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flowIdentityrnn/while/Exit_2Z^gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*"
_class
loc:@rnn/TensorArray
�
_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV3Ygradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayStack/range(gradients/rnn/transpose_1_grad/transposeUgradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayGrad/gradient_flow*
T0*"
_class
loc:@rnn/TensorArray
>
gradients/zeros_like_2	ZerosLikernn/while/Exit_3*
T0
>
gradients/zeros_like_3	ZerosLikernn/while/Exit_4*
T0
>
gradients/zeros_like_4	ZerosLikernn/while/Exit_5*
T0
>
gradients/zeros_like_5	ZerosLikernn/while/Exit_6*
T0
�
&gradients/rnn/while/Exit_2_grad/b_exitEnter_gradients/rnn/TensorArrayStack/TensorArrayGatherV3_grad/TensorArrayScatter/TensorArrayScatterV3*
T0*#
_class
loc:@rnn/while/Exit_2*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Exit_3_grad/b_exitEntergradients/zeros_like_2*
T0*#
_class
loc:@rnn/while/Exit_3*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Exit_4_grad/b_exitEntergradients/zeros_like_3*
T0*#
_class
loc:@rnn/while/Exit_4*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Exit_5_grad/b_exitEntergradients/zeros_like_4*
T0*#
_class
loc:@rnn/while/Exit_5*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Exit_6_grad/b_exitEntergradients/zeros_like_5*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*#
_class
loc:@rnn/while/Exit_6*
is_constant( 
�
*gradients/rnn/while/Switch_2_grad/b_switchMerge&gradients/rnn/while/Exit_2_grad/b_exit1gradients/rnn/while/Switch_2_grad_1/NextIteration*
T0*$
_class
loc:@rnn/while/Merge_2*
N
�
*gradients/rnn/while/Switch_3_grad/b_switchMerge&gradients/rnn/while/Exit_3_grad/b_exit1gradients/rnn/while/Switch_3_grad_1/NextIteration*
N*
T0*$
_class
loc:@rnn/while/Merge_3
�
*gradients/rnn/while/Switch_4_grad/b_switchMerge&gradients/rnn/while/Exit_4_grad/b_exit1gradients/rnn/while/Switch_4_grad_1/NextIteration*
T0*$
_class
loc:@rnn/while/Merge_4*
N
�
*gradients/rnn/while/Switch_5_grad/b_switchMerge&gradients/rnn/while/Exit_5_grad/b_exit1gradients/rnn/while/Switch_5_grad_1/NextIteration*
T0*$
_class
loc:@rnn/while/Merge_5*
N
�
*gradients/rnn/while/Switch_6_grad/b_switchMerge&gradients/rnn/while/Exit_6_grad/b_exit1gradients/rnn/while/Switch_6_grad_1/NextIteration*
N*
T0*$
_class
loc:@rnn/while/Merge_6
�
'gradients/rnn/while/Merge_2_grad/SwitchSwitch*gradients/rnn/while/Switch_2_grad/b_switchgradients/b_count_10*
T0*$
_class
loc:@rnn/while/Merge_2
�
'gradients/rnn/while/Merge_3_grad/SwitchSwitch*gradients/rnn/while/Switch_3_grad/b_switchgradients/b_count_10*
T0*$
_class
loc:@rnn/while/Merge_3
�
'gradients/rnn/while/Merge_4_grad/SwitchSwitch*gradients/rnn/while/Switch_4_grad/b_switchgradients/b_count_10*
T0*$
_class
loc:@rnn/while/Merge_4
�
'gradients/rnn/while/Merge_5_grad/SwitchSwitch*gradients/rnn/while/Switch_5_grad/b_switchgradients/b_count_10*
T0*$
_class
loc:@rnn/while/Merge_5
�
'gradients/rnn/while/Merge_6_grad/SwitchSwitch*gradients/rnn/while/Switch_6_grad/b_switchgradients/b_count_10*
T0*$
_class
loc:@rnn/while/Merge_6
�
%gradients/rnn/while/Enter_2_grad/ExitExit'gradients/rnn/while/Merge_2_grad/Switch*
T0*$
_class
loc:@rnn/while/Enter_2
�
%gradients/rnn/while/Enter_3_grad/ExitExit'gradients/rnn/while/Merge_3_grad/Switch*
T0*$
_class
loc:@rnn/while/Enter_3
�
%gradients/rnn/while/Enter_4_grad/ExitExit'gradients/rnn/while/Merge_4_grad/Switch*
T0*$
_class
loc:@rnn/while/Enter_4
�
%gradients/rnn/while/Enter_5_grad/ExitExit'gradients/rnn/while/Merge_5_grad/Switch*
T0*$
_class
loc:@rnn/while/Enter_5
�
%gradients/rnn/while/Enter_6_grad/ExitExit'gradients/rnn/while/Merge_6_grad/Switch*
T0*$
_class
loc:@rnn/while/Enter_6
�
^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter)gradients/rnn/while/Merge_2_grad/Switch:1*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
source	gradients
�
dgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flowIdentity)gradients/rnn/while/Merge_2_grad/Switch:1_^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3TensorArrayReadV3^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayGrad/gradient_flow*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
dtype0
�
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/ConstConst*a
_classW
Uloc:@rnn/while/Identity_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_accStackV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Const*a
_classW
Uloc:@rnn/while/Identity_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name *
	elem_type0
�
Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Zgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPushV2StackPushV2Tgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/Enterrnn/while/Identity_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
swap_memory( 
�
Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2
StackPopV2_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
_gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2/EnterEnterTgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(
�'
Ugradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/b_syncControlTrigger4^gradients/rnn/while/Select_1_grad/Select/StackPopV28^gradients/rnn/while/Select_1_grad/zeros_like/StackPopV28^gradients/rnn/while/Select_2_grad/zeros_like/StackPopV28^gradients/rnn/while/Select_3_grad/zeros_like/StackPopV28^gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2Z^gradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPopV2R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2V^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPopV2R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPopV2`^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1N^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPopV2P^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPopV2X^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2V^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2f^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2T^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2b^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2d^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1R^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
,gradients/rnn/while/Select_1_grad/zeros_like	ZerosLike7gradients/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
2gradients/rnn/while/Select_1_grad/zeros_like/ConstConst*a
_classW
Uloc:@rnn/while/Identity_38loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
valueB :
���������*
dtype0
�
2gradients/rnn/while/Select_1_grad/zeros_like/f_accStackV22gradients/rnn/while/Select_1_grad/zeros_like/Const*a
_classW
Uloc:@rnn/while/Identity_38loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*

stack_name *
	elem_type0
�
2gradients/rnn/while/Select_1_grad/zeros_like/EnterEnter2gradients/rnn/while/Select_1_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
8gradients/rnn/while/Select_1_grad/zeros_like/StackPushV2StackPushV22gradients/rnn/while/Select_1_grad/zeros_like/Enterrnn/while/Identity_3^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
swap_memory( 
�
7gradients/rnn/while/Select_1_grad/zeros_like/StackPopV2
StackPopV2=gradients/rnn/while/Select_1_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
=gradients/rnn/while/Select_1_grad/zeros_like/StackPopV2/EnterEnter2gradients/rnn/while/Select_1_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
(gradients/rnn/while/Select_1_grad/SelectSelect3gradients/rnn/while/Select_1_grad/Select/StackPopV2)gradients/rnn/while/Merge_3_grad/Switch:1,gradients/rnn/while/Select_1_grad/zeros_like*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
.gradients/rnn/while/Select_1_grad/Select/ConstConst*c
_classY
Wloc:@rnn/while/GreaterEqual8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
valueB :
���������*
dtype0
�
.gradients/rnn/while/Select_1_grad/Select/f_accStackV2.gradients/rnn/while/Select_1_grad/Select/Const*c
_classY
Wloc:@rnn/while/GreaterEqual8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*

stack_name *
	elem_type0

�
.gradients/rnn/while/Select_1_grad/Select/EnterEnter.gradients/rnn/while/Select_1_grad/Select/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
4gradients/rnn/while/Select_1_grad/Select/StackPushV2StackPushV2.gradients/rnn/while/Select_1_grad/Select/Enterrnn/while/GreaterEqual^gradients/Add_2*
swap_memory( *
T0
*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
3gradients/rnn/while/Select_1_grad/Select/StackPopV2
StackPopV29gradients/rnn/while/Select_1_grad/Select/StackPopV2/Enter^gradients/Sub_2*
	elem_type0
*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
9gradients/rnn/while/Select_1_grad/Select/StackPopV2/EnterEnter.gradients/rnn/while/Select_1_grad/Select/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
*gradients/rnn/while/Select_1_grad/Select_1Select3gradients/rnn/while/Select_1_grad/Select/StackPopV2,gradients/rnn/while/Select_1_grad/zeros_like)gradients/rnn/while/Merge_3_grad/Switch:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
,gradients/rnn/while/Select_2_grad/zeros_like	ZerosLike7gradients/rnn/while/Select_2_grad/zeros_like/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
2gradients/rnn/while/Select_2_grad/zeros_like/ConstConst*
dtype0*a
_classW
Uloc:@rnn/while/Identity_48loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
valueB :
���������
�
2gradients/rnn/while/Select_2_grad/zeros_like/f_accStackV22gradients/rnn/while/Select_2_grad/zeros_like/Const*

stack_name *
	elem_type0*a
_classW
Uloc:@rnn/while/Identity_48loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
2gradients/rnn/while/Select_2_grad/zeros_like/EnterEnter2gradients/rnn/while/Select_2_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
8gradients/rnn/while/Select_2_grad/zeros_like/StackPushV2StackPushV22gradients/rnn/while/Select_2_grad/zeros_like/Enterrnn/while/Identity_4^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
swap_memory( 
�
7gradients/rnn/while/Select_2_grad/zeros_like/StackPopV2
StackPopV2=gradients/rnn/while/Select_2_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
	elem_type0
�
=gradients/rnn/while/Select_2_grad/zeros_like/StackPopV2/EnterEnter2gradients/rnn/while/Select_2_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
(gradients/rnn/while/Select_2_grad/SelectSelect3gradients/rnn/while/Select_1_grad/Select/StackPopV2)gradients/rnn/while/Merge_4_grad/Switch:1,gradients/rnn/while/Select_2_grad/zeros_like*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
*gradients/rnn/while/Select_2_grad/Select_1Select3gradients/rnn/while/Select_1_grad/Select/StackPopV2,gradients/rnn/while/Select_2_grad/zeros_like)gradients/rnn/while/Merge_4_grad/Switch:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
,gradients/rnn/while/Select_3_grad/zeros_like	ZerosLike7gradients/rnn/while/Select_3_grad/zeros_like/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
2gradients/rnn/while/Select_3_grad/zeros_like/ConstConst*a
_classW
Uloc:@rnn/while/Identity_58loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
valueB :
���������*
dtype0
�
2gradients/rnn/while/Select_3_grad/zeros_like/f_accStackV22gradients/rnn/while/Select_3_grad/zeros_like/Const*
	elem_type0*a
_classW
Uloc:@rnn/while/Identity_58loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*

stack_name 
�
2gradients/rnn/while/Select_3_grad/zeros_like/EnterEnter2gradients/rnn/while/Select_3_grad/zeros_like/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(
�
8gradients/rnn/while/Select_3_grad/zeros_like/StackPushV2StackPushV22gradients/rnn/while/Select_3_grad/zeros_like/Enterrnn/while/Identity_5^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
7gradients/rnn/while/Select_3_grad/zeros_like/StackPopV2
StackPopV2=gradients/rnn/while/Select_3_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
	elem_type0
�
=gradients/rnn/while/Select_3_grad/zeros_like/StackPopV2/EnterEnter2gradients/rnn/while/Select_3_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
(gradients/rnn/while/Select_3_grad/SelectSelect3gradients/rnn/while/Select_1_grad/Select/StackPopV2)gradients/rnn/while/Merge_5_grad/Switch:1,gradients/rnn/while/Select_3_grad/zeros_like*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
*gradients/rnn/while/Select_3_grad/Select_1Select3gradients/rnn/while/Select_1_grad/Select/StackPopV2,gradients/rnn/while/Select_3_grad/zeros_like)gradients/rnn/while/Merge_5_grad/Switch:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
,gradients/rnn/while/Select_4_grad/zeros_like	ZerosLike7gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
2gradients/rnn/while/Select_4_grad/zeros_like/ConstConst*a
_classW
Uloc:@rnn/while/Identity_68loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
2gradients/rnn/while/Select_4_grad/zeros_like/f_accStackV22gradients/rnn/while/Select_4_grad/zeros_like/Const*a
_classW
Uloc:@rnn/while/Identity_68loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name *
	elem_type0
�
2gradients/rnn/while/Select_4_grad/zeros_like/EnterEnter2gradients/rnn/while/Select_4_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
8gradients/rnn/while/Select_4_grad/zeros_like/StackPushV2StackPushV22gradients/rnn/while/Select_4_grad/zeros_like/Enterrnn/while/Identity_6^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
7gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2
StackPopV2=gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
=gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2/EnterEnter2gradients/rnn/while/Select_4_grad/zeros_like/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
(gradients/rnn/while/Select_4_grad/SelectSelect3gradients/rnn/while/Select_1_grad/Select/StackPopV2)gradients/rnn/while/Merge_6_grad/Switch:1,gradients/rnn/while/Select_4_grad/zeros_like*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
*gradients/rnn/while/Select_4_grad/Select_1Select3gradients/rnn/while/Select_1_grad/Select/StackPopV2,gradients/rnn/while/Select_4_grad/zeros_like)gradients/rnn/while/Merge_6_grad/Switch:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
*gradients/rnn/while/Select_grad/zeros_like	ZerosLike0gradients/rnn/while/Select_grad/zeros_like/Enter^gradients/Sub_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
0gradients/rnn/while/Select_grad/zeros_like/EnterEnter	rnn/zeros*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
&gradients/rnn/while/Select_grad/SelectSelect3gradients/rnn/while/Select_1_grad/Select/StackPopV2Ngradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*gradients/rnn/while/Select_grad/zeros_like*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
(gradients/rnn/while/Select_grad/Select_1Select3gradients/rnn/while/Select_1_grad/Select/StackPopV2*gradients/rnn/while/Select_grad/zeros_likeNgradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
gradients/AddN_1AddN*gradients/rnn/while/Select_4_grad/Select_1(gradients/rnn/while/Select_grad/Select_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
N
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/ShapeShape7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape_1Shape4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name *
	elem_type0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Shape_1^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
	elem_type0
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/MulMulgradients/AddN_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/ConstConst*�
_classw
u9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/Const*�
_classw
u9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*

stack_name *
	elem_type0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/Enter4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1MulSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2gradients/AddN_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/ConstConst*
dtype0*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_28loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
valueB :
���������
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/f_accStackV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/Const*

stack_name *
	elem_type0*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_28loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/Enter7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
	elem_type0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sum_1SumHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2*
Tshape0
�
1gradients/rnn/while/Switch_2_grad_1/NextIterationNextIteration)gradients/rnn/while/Merge_2_grad/Switch:1*
T0*$
_class
loc:@rnn/while/Merge_2
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape*
T0*J
_class@
><loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGradTanhGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Mul/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2_grad/Reshape_1*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1
�
gradients/AddN_2AddN*gradients/rnn/while/Select_3_grad/Select_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_1_grad/TanhGrad*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
N
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/ShapeShape1rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape_1Shape3rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
valueB :
���������
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Const*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*

stack_name 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*

stack_name 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Shape_1^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/SumSumgradients/AddN_2Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
	keep_dims( *

Tidx0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/ShapeShape5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape_1Shapernn/while/Identity_5*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
out_type0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*

stack_name *
	elem_type0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
swap_memory( 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
	elem_type0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*

stack_name *
	elem_type0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Shape_1^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/MulMulJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape7gradients/rnn/while/Select_3_grad/zeros_like/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/SumSumDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/MulVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
	keep_dims( *

Tidx0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/ConstConst*�
_classv
t:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/Const*�
_classv
t:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*

stack_name *
	elem_type0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/Enter5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
	elem_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sum_1SumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs:1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Sum_1cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/ShapeShape7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape_1Shape2rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*

stack_name 
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
	elem_type0
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*

stack_name *
	elem_type0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Shape_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/MulMulLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/ConstConst*
_classu
s7loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/Const*
_classu
s7loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*

stack_name *
	elem_type0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/Enter2rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
	elem_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1MulSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1_grad/Reshape_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/ConstConst*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/f_accStackV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/Const*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_18loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*

stack_name *
	elem_type0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/Enter7rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
	elem_type0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sum_1SumHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1*
Tshape0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Mul_1/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape*
T0*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid
�
gradients/AddN_3AddN(gradients/rnn/while/Select_3_grad/SelectJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_grad/Reshape_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_1*
N
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape*
T0*J
_class@
><loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGradTanhGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Mul/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_1_grad/Reshape_1*
T0*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ShapeShape5rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split:2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1Const^gradients/Sub_2*
dtype0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
valueB 
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*

stack_name *
	elem_type0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
swap_memory( 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/SumSumPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum_1SumPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_grad/SigmoidGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/BroadcastGradientArgs:1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Sum_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/Shape_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add*
Tshape0
�
1gradients/rnn/while/Switch_5_grad_1/NextIterationNextIterationgradients/AddN_3*
T0*$
_class
loc:@rnn/while/Merge_5
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concatConcatV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_1_grad/SigmoidGradJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Tanh_grad/TanhGradHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/add_grad/ReshapeRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/Sigmoid_2_grad/SigmoidGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/Const*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split*
N*

Tidx0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat/ConstConst^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split*
value	B :*
dtype0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat*
T0*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd*
data_formatNHWC
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulMatMulIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concatPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul/Enter*
transpose_b(*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
transpose_a( 
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/read*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1MatMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/split_grad/concat*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
transpose_a(*
transpose_b( 
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/ConstConst*
dtype0*�
_classx
v9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
valueB :
���������
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/Const*�
_classx
v9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*

stack_name *
	elem_type0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/EnterEnterRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/Enter4rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat^gradients/Add_2*
swap_memory( *
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_2*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_accConst*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter*
valueB�	*    *
dtype0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter*
is_constant( 
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter*
N
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_10*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/AddAddSgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch:1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationNgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Add*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConstConst^gradients/Sub_2*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
value	B :*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/RankConst^gradients/Sub_2*
dtype0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
value	B :
�
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/modFloorModIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConstHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Rank*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeShape1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeNShapeNUgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV27gradients/rnn/while/Select_4_grad/zeros_like/StackPopV2*
N*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
out_type0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/ConstConst*
_classu
s6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_19loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
valueB :
���������*
dtype0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_accStackV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/Const*

stack_name *
	elem_type0*
_classu
s6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_19loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/EnterEnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
is_constant(
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/Enter1rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1^gradients/Add_2*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
swap_memory( 
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffsetConcatOffsetGgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/modJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeNLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN:1*
N*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/SliceSliceJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffsetJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN*
Index0*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1SliceJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMulRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ConcatOffset:1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_accConst*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter*
valueB
��	*    *
dtype0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2MergeQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/NextIteration*
N*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/SwitchSwitchQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_10*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/AddAddRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Switch:1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul_grad/MatMul_1*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Add*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3ExitPgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/Switch*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Shape_1Shape0rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Cast*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
out_type0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/ConstConst*
dtype0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
valueB :
���������
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/Const*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*

stack_name 
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Shape^gradients/Add_2*
swap_memory( *
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/Const_1Const*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/Const_1*

stack_name *
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Enter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Shape_1^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/MulMulIgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/SliceOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/ConstConst*
dtype0*{
_classq
o5loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Cast6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
valueB :
���������
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/Const*

stack_name *
	elem_type0*{
_classq
o5loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Cast6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/Enter0rnn/while/rnn/multi_rnn_cell/cell_1/dropout/Cast^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
swap_memory( 
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/SumSumDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/MulVgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/ConstConst*z
_classp
n4loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/Const*

stack_name *
	elem_type0*z
_classp
n4loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul6loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Sum_1SumFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Mul_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Sum_1cgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1*
Tshape0
�
gradients/AddN_4AddN(gradients/rnn/while/Select_4_grad/SelectKgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/concat_grad/Slice_1*
N*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/mul_2
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ShapeShape3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
out_type0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1Shape3rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
out_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/ConstConst*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
valueB :
���������*
dtype0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape^gradients/Add_2*
swap_memory( *
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*

stack_name 
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Shape_1^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
swap_memory( 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
	elem_type0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/MulMulHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPopV2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/ConstConst*|
_classr
p4loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv*
valueB :
���������*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/f_accStackV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/Const*
	elem_type0*|
_classr
p4loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul8loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv*

stack_name 
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/Enter3rnn/while/rnn/multi_rnn_cell/cell_1/dropout/truediv^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
swap_memory( 
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/MulTgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
Tshape0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_1_grad/Reshape*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/ConstConst*
dtype0*|
_classr
p8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_24loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
valueB :
���������
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/Const*
	elem_type0*|
_classr
p8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_24loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*

stack_name 
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/Enter3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
swap_memory( 
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
	elem_type0
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs:1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
	keep_dims( *

Tidx0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul*
Tshape0
�
1gradients/rnn/while/Switch_6_grad_1/NextIterationNextIterationgradients/AddN_4*
T0*$
_class
loc:@rnn/while/Merge_6
�
gradients/AddN_5AddN*gradients/rnn/while/Select_2_grad/Select_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_1/dropout/mul_grad/Reshape*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
N
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ShapeShape7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1Shape4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
	elem_type0
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Const_1*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*

stack_name *
	elem_type0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Shape_1^gradients/Add_2*
swap_memory( *
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
	elem_type0
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/MulMulgradients/AddN_5Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/ConstConst*�
_classw
u9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_18loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Const*�
_classw
u9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_18loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*

stack_name *
	elem_type0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/Enter4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1MulSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2gradients/AddN_5*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/ConstConst*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_28loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
valueB :
���������*
dtype0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_accStackV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Const*

stack_name *
	elem_type0*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_28loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPushV2StackPushV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/Enter7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2
StackPopV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
	elem_type0
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1SumHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
Tshape0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradSigmoidGradSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape*
T0*J
_class@
><loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGradTanhGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Mul/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2_grad/Reshape_1*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1
�
gradients/AddN_6AddN*gradients/rnn/while/Select_1_grad/Select_1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_1_grad/TanhGrad*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
N
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ShapeShape1rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1Shape3rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*

stack_name 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Shape_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
	elem_type0
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/SumSumgradients/AddN_6Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1Sumgradients/AddN_6Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs:1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
	keep_dims( *

Tidx0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ShapeShape5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1Shapernn/while/Identity_3*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
out_type0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape^gradients/Add_2*
swap_memory( *
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1Const*
dtype0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
valueB :
���������
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1StackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Const_1*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*

stack_name *
	elem_type0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Enter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/Enter_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Shape_1^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/MulMulJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape7gradients/rnn/while/Select_1_grad/zeros_like/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/SumSumDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/MulVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/ConstConst*�
_classv
t:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Const*�
_classv
t:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*

stack_name *
	elem_type0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/Enter5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
	elem_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1SumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs:1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Sum_1cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ShapeShape7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1Shape2rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
out_type0
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgscgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/ConstConst*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_accStackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/EnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1Const*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Const_1*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*

stack_name 
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Enter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(
�
fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/Enter_1Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Shape_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
swap_memory( 
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
	elem_type0
�
kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/MulMulLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/ConstConst*
_classu
s7loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Const*
	elem_type0*
_classu
s7loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*

stack_name 
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/Enter2rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
	elem_type0
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/SumSumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/MulXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/ReshapeReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sumcgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
Tshape0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1MulSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1_grad/Reshape_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/ConstConst*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_18loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
valueB :
���������*
dtype0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_accStackV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Const*�
_classz
x<loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_18loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*

stack_name *
	elem_type0
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPushV2StackPushV2Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/Enter7rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1^gradients/Add_2*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
swap_memory( 
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2
StackPopV2Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
Ygradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2/EnterEnterNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
is_constant(
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1SumHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1ReshapeHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Sum_1egradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1*
Tshape0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradSigmoidGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Mul_1/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape*
T0*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid
�
gradients/AddN_7AddN(gradients/rnn/while/Select_1_grad/SelectJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_grad/Reshape_1*
N*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_1
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradSigmoidGradSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul_1/StackPopV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape*
T0*J
_class@
><loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradTanhGradQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Mul/StackPopV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_1_grad/Reshape_1*
T0*E
_class;
97loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ShapeShape5rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split:2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1Const^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
valueB *
dtype0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/Const*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*

stack_name 
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape^gradients/Add_2*
swap_memory( *
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
	elem_type0
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/SumSumPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1SumPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_grad/SigmoidGradXgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/BroadcastGradientArgs:1*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Sum_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/Shape_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add*
Tshape0
�
1gradients/rnn/while/Switch_3_grad_1/NextIterationNextIterationgradients/AddN_7*
T0*$
_class
loc:@rnn/while/Merge_3
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatConcatV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_1_grad/SigmoidGradJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Tanh_grad/TanhGradHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/add_grad/ReshapeRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/Sigmoid_2_grad/SigmoidGradOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/Const*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*
N*

Tidx0
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat/ConstConst^gradients/Sub_2*
dtype0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split*
value	B :
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGradBiasAddGradIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat*
T0*H
_class>
<:loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd*
data_formatNHWC
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulMatMulIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concatPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul/Enter*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
transpose_a( *
transpose_b(
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul/EnterEnter/rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/read*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1MatMulWgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/split_grad/concat*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
transpose_a(*
transpose_b( 
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/ConstConst*
dtype0*�
_classx
v9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
valueB :
���������
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_accStackV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Const*�
_classx
v9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*

stack_name *
	elem_type0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/EnterEnterRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPushV2StackPushV2Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/Enter4rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat^gradients/Add_2*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
swap_memory( 
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2
StackPopV2]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/Enter^gradients/Sub_2*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
	elem_type0
�
]gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/StackPopV2/EnterEnterRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_accConst*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
valueB�	*    *
dtype0
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1EnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2MergeRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIteration*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter*
N
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/SwitchSwitchRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_2gradients/b_count_10*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/AddAddSgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch:1Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd_grad/BiasAddGrad*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/NextIterationNextIterationNgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Add*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3ExitQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/Switch*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConstConst^gradients/Sub_2*
dtype0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
value	B :
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/RankConst^gradients/Sub_2*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
value	B :*
dtype0
�
Ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modFloorModIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConstHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Rank*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeShape1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
out_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeNShapeNUgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV27gradients/rnn/while/Select_2_grad/zeros_like/StackPopV2*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
out_type0*
N
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/ConstConst*
_classu
s6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_19loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
valueB :
���������*
dtype0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_accStackV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Const*
_classu
s6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_19loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*

stack_name *
	elem_type0
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/EnterEnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPushV2StackPushV2Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/Enter1rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1^gradients/Add_2*
swap_memory( *
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2
StackPopV2[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/Enter^gradients/Sub_2*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
	elem_type0
�
[gradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/StackPopV2/EnterEnterPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN/f_acc*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetConcatOffsetGgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/modJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeNLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1*
N*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
�
Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceSliceJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffsetJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN*
Index0*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
�
Kgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1SliceJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMulRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ConcatOffset:1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/ShapeN:1*
Index0*
T0*G
_class=
;9loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_accConst*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
valueB
��	*    *
dtype0
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1EnterOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
is_constant( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2MergeQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_1Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIteration*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter*
N
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/SwitchSwitchQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_2gradients/b_count_10*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/AddAddRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch:1Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul_grad/MatMul_1*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/NextIterationNextIterationMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Add*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3ExitPgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/Switch*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/ShapeShape/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
out_type0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Shape_1Shape0rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Cast*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
out_type0
�
Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsagradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/ConstConst*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
valueB :
���������*
dtype0
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_accStackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/Const*

stack_name *
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/EnterFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Shape^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
swap_memory( 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/Const_1Const*
dtype0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
valueB :
���������
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1StackV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/Const_1*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*

stack_name *
	elem_type0
�
^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Enter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
parallel_iterations *'

frame_namernn/while/while_context*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(
�
dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/Enter_1Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Shape_1^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
swap_memory( 
�
cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2igradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
	elem_type0
�
igradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter^gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/f_acc_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/MulMulIgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/SliceOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/ConstConst*{
_classq
o5loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Cast6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
valueB :
���������*
dtype0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/Const*{
_classq
o5loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Cast6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*

stack_name *
	elem_type0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/Enter0rnn/while/rnn/multi_rnn_cell/cell_0/dropout/Cast^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
swap_memory( 
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/SumSumDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/MulVgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs*
	keep_dims( *

Tidx0*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/ReshapeReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Sumagradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
Tshape0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPopV2Igradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/ConstConst*z
_classp
n4loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
valueB :
���������*
dtype0
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/f_accStackV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/Const*
	elem_type0*z
_classp
n4loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul6loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*

stack_name 
�
Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/f_acc*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Rgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPushV2StackPushV2Lgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/Enter/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul^gradients/Add_2*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
swap_memory( 
�
Qgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPopV2
StackPopV2Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1
�
Wgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/StackPopV2/EnterEnterLgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
is_constant(
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Sum_1SumFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Mul_1Xgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
	keep_dims( *

Tidx0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Reshape_1ReshapeFgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Sum_1cgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/BroadcastGradientArgs/StackPopV2_1*
T0*D
_class:
86loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1*
Tshape0
�
gradients/AddN_8AddN(gradients/rnn/while/Select_2_grad/SelectKgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/concat_grad/Slice_1*
T0*F
_class<
:8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/mul_2*
N
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ShapeShapernn/while/TensorArrayReadV3*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
out_type0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1Shape3rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
out_type0
�
Tgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/ConstConst*
dtype0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
valueB :
���������
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_accStackV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name *
	elem_type0
�
Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
`gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2StackPushV2Zgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/EnterDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
swap_memory( 
�
_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2
StackPopV2egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/Enter^gradients/Sub_2*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
	elem_type0
�
egradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2/EnterEnterZgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1Const*
dtype0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
valueB :
���������
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1StackV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Const_1*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*

stack_name 
�
\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Enter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPushV2_1StackPushV2\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/Enter_1Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Shape_1^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
swap_memory( 
�
agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1
StackPopV2ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/Enter^gradients/Sub_2*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
ggradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1/EnterEnter\gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/f_acc_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/MulMulHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/ReshapeMgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/ConstConst*|
_classr
p4loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv*
valueB :
���������*
dtype0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_accStackV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Const*

stack_name *
	elem_type0*|
_classr
p4loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul8loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(*
parallel_iterations *'

frame_namernn/while/while_context
�
Ngradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPushV2StackPushV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/Enter3rnn/while/rnn/multi_rnn_cell/cell_0/dropout/truediv^gradients/Add_2*
swap_memory( *
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Mgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2
StackPopV2Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Sgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/StackPopV2/EnterEnterHgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul/f_acc*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(
�
Bgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/SumSumBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/MulTgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
	keep_dims( *

Tidx0
�
Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeReshapeBgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_gradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
Tshape0
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1MulOgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_1_grad/Reshape*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/ConstConst*d
_classZ
X loc:@rnn/while/TensorArrayReadV34loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
valueB :
���������*
dtype0
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_accStackV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Const*

stack_name *
	elem_type0*d
_classZ
X loc:@rnn/while/TensorArrayReadV34loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc*
parallel_iterations *'

frame_namernn/while/while_context*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(
�
Pgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPushV2StackPushV2Jgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/Enterrnn/while/TensorArrayReadV3^gradients/Add_2*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
swap_memory( 
�
Ogradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2
StackPopV2Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2/Enter^gradients/Sub_2*
	elem_type0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul
�
Ugradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/StackPopV2/EnterEnterJgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1/f_acc*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Dgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1SumDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Mul_1Vgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs:1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
	keep_dims( *

Tidx0
�
Hgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Reshape_1ReshapeDgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/Sum_1agradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/BroadcastGradientArgs/StackPopV2_1*
T0*B
_class8
64loc:@rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul*
Tshape0
�
1gradients/rnn/while/Switch_4_grad_1/NextIterationNextIterationgradients/AddN_8*
T0*$
_class
loc:@rnn/while/Merge_4
�
Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1^gradients/Sub_2*V
_classL
J loc:@rnn/while/TensorArrayReadV3&loc:@rnn/while/TensorArrayReadV3/Enter*
source	gradients
�
Rgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/EnterEnterrnn/TensorArray_1*
T0*V
_classL
J loc:@rnn/while/TensorArrayReadV3&loc:@rnn/while/TensorArrayReadV3/Enter*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Tgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1Enter>rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*V
_classL
J loc:@rnn/while/TensorArrayReadV3&loc:@rnn/while/TensorArrayReadV3/Enter*
is_constant(*
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
Hgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flowIdentityTgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3/Enter_1M^gradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*V
_classL
J loc:@rnn/while/TensorArrayReadV3&loc:@rnn/while/TensorArrayReadV3/Enter
�
Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3Lgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/TensorArrayGradV3Ygradients/rnn/while/TensorArrayWrite/TensorArrayWriteV3_grad/TensorArrayReadV3/StackPopV2Fgradients/rnn/while/rnn/multi_rnn_cell/cell_0/dropout/mul_grad/ReshapeHgradients/rnn/while/TensorArrayReadV3_grad/TensorArrayGrad/gradient_flow*
T0*.
_class$
" loc:@rnn/while/TensorArrayReadV3
�
8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_accConst*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1*
valueB
 *    *
dtype0
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1Enter8gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1*
is_constant( *
parallel_iterations *1

frame_name#!gradients/rnn/while/while_context
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2Merge:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_1@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIteration*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1*
N
�
9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/SwitchSwitch:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_2gradients/b_count_10*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1
�
6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/AddAdd;gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch:1Ngradients/rnn/while/TensorArrayReadV3_grad/TensorArrayWrite/TensorArrayWriteV3*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1
�
@gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/NextIterationNextIteration6gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Add*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1
�
:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3Exit9gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/Switch*
T0*6
_class,
*(loc:@rnn/while/TensorArrayReadV3/Enter_1
�
ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3TensorArrayGradV3rnn/TensorArray_1:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3*8
_class.
,loc:@rnn/TensorArray_1loc:@rnn/transpose*
source	gradients
�
kgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flowIdentity:gradients/rnn/while/TensorArrayReadV3/Enter_1_grad/b_acc_3p^gradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3*
T0*8
_class.
,loc:@rnn/TensorArray_1loc:@rnn/transpose
�
agradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3TensorArrayGatherV3ogradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/TensorArrayGradV3rnn/TensorArrayUnstack/rangekgradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGrad/gradient_flow*
element_shape:* 
_class
loc:@rnn/transpose*
dtype0
z
.gradients/rnn/transpose_grad/InvertPermutationInvertPermutation
rnn/concat*
T0* 
_class
loc:@rnn/transpose
�
&gradients/rnn/transpose_grad/transpose	Transposeagradients/rnn/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3_grad/TensorArrayGatherV3.gradients/rnn/transpose_grad/InvertPermutation*
Tperm0*
T0* 
_class
loc:@rnn/transpose
�
%gradients/embedding_lookup_grad/ShapeConst*&
_class
loc:@input_embedding_mat*%
valueB	"��      ,      *
dtype0	
�
$gradients/embedding_lookup_grad/CastCast%gradients/embedding_lookup_grad/Shape*

SrcT0	*&
_class
loc:@input_embedding_mat*
Truncate( *

DstT0
z
$gradients/embedding_lookup_grad/SizeSizeinput_batch*
T0*&
_class
loc:@input_embedding_mat*
out_type0
�
.gradients/embedding_lookup_grad/ExpandDims/dimConst*
dtype0*&
_class
loc:@input_embedding_mat*
value	B : 
�
*gradients/embedding_lookup_grad/ExpandDims
ExpandDims$gradients/embedding_lookup_grad/Size.gradients/embedding_lookup_grad/ExpandDims/dim*

Tdim0*
T0*&
_class
loc:@input_embedding_mat
�
3gradients/embedding_lookup_grad/strided_slice/stackConst*&
_class
loc:@input_embedding_mat*
valueB:*
dtype0
�
5gradients/embedding_lookup_grad/strided_slice/stack_1Const*&
_class
loc:@input_embedding_mat*
valueB: *
dtype0
�
5gradients/embedding_lookup_grad/strided_slice/stack_2Const*
dtype0*&
_class
loc:@input_embedding_mat*
valueB:
�
-gradients/embedding_lookup_grad/strided_sliceStridedSlice$gradients/embedding_lookup_grad/Cast3gradients/embedding_lookup_grad/strided_slice/stack5gradients/embedding_lookup_grad/strided_slice/stack_15gradients/embedding_lookup_grad/strided_slice/stack_2*
shrink_axis_mask *

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask*
Index0*
T0*&
_class
loc:@input_embedding_mat
}
+gradients/embedding_lookup_grad/concat/axisConst*&
_class
loc:@input_embedding_mat*
value	B : *
dtype0
�
&gradients/embedding_lookup_grad/concatConcatV2*gradients/embedding_lookup_grad/ExpandDims-gradients/embedding_lookup_grad/strided_slice+gradients/embedding_lookup_grad/concat/axis*
N*

Tidx0*
T0*&
_class
loc:@input_embedding_mat
�
'gradients/embedding_lookup_grad/ReshapeReshape&gradients/rnn/transpose_grad/transpose&gradients/embedding_lookup_grad/concat*
T0*&
_class
loc:@input_embedding_mat*
Tshape0
�
)gradients/embedding_lookup_grad/Reshape_1Reshapeinput_batch*gradients/embedding_lookup_grad/ExpandDims*
T0*&
_class
loc:@input_embedding_mat*
Tshape0
v
global_norm/L2LossL2Loss'gradients/embedding_lookup_grad/Reshape*
T0*&
_class
loc:@input_embedding_mat
�
global_norm/L2Loss_1L2Loss0gradients/map/while/transpose/Enter_grad/b_acc_3*
T0*,
_class"
 loc:@map/while/transpose/Enter

global_norm/L2Loss_2L2Loss,gradients/map/while/Add_1/Enter_grad/b_acc_3*
T0*(
_class
loc:@map/while/Add_1/Enter
�
global_norm/L2Loss_3L2Loss2gradients/map_1/while/transpose/Enter_grad/b_acc_3*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
global_norm/L2Loss_4L2Loss.gradients/map_1/while/Add_1/Enter_grad/b_acc_3*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
global_norm/L2Loss_5L2LossQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
global_norm/L2Loss_6L2LossRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
global_norm/L2Loss_7L2LossQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
global_norm/L2Loss_8L2LossRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
global_norm/stackPackglobal_norm/L2Lossglobal_norm/L2Loss_1global_norm/L2Loss_2global_norm/L2Loss_3global_norm/L2Loss_4global_norm/L2Loss_5global_norm/L2Loss_6global_norm/L2Loss_7global_norm/L2Loss_8*
T0*

axis *
N	
?
global_norm/ConstConst*
valueB: *
dtype0
b
global_norm/SumSumglobal_norm/stackglobal_norm/Const*
T0*

Tidx0*
	keep_dims( 
@
global_norm/Const_1Const*
valueB
 *   @*
dtype0
E
global_norm/mulMulglobal_norm/Sumglobal_norm/Const_1*
T0
9
global_norm/global_normSqrtglobal_norm/mul*
T0
J
clip_by_global_norm/truediv/xConst*
valueB
 *  �?*
dtype0
g
clip_by_global_norm/truedivRealDivclip_by_global_norm/truediv/xglobal_norm/global_norm*
T0
F
clip_by_global_norm/ConstConst*
valueB
 *  �?*
dtype0
L
clip_by_global_norm/truediv_1/yConst*
dtype0*
valueB
 *  �@
m
clip_by_global_norm/truediv_1RealDivclip_by_global_norm/Constclip_by_global_norm/truediv_1/y*
T0
k
clip_by_global_norm/MinimumMinimumclip_by_global_norm/truedivclip_by_global_norm/truediv_1*
T0
F
clip_by_global_norm/mul/xConst*
dtype0*
valueB
 *  �@
_
clip_by_global_norm/mulMulclip_by_global_norm/mul/xclip_by_global_norm/Minimum*
T0
J
clip_by_global_norm/IsFiniteIsFiniteglobal_norm/global_norm*
T0
H
clip_by_global_norm/Const_1Const*
valueB
 *  �*
dtype0
�
clip_by_global_norm/SelectSelectclip_by_global_norm/IsFiniteclip_by_global_norm/mulclip_by_global_norm/Const_1*
T0
�
clip_by_global_norm/mul_1Mul'gradients/embedding_lookup_grad/Reshapeclip_by_global_norm/Select*
T0*&
_class
loc:@input_embedding_mat
�
*clip_by_global_norm/clip_by_global_norm/_0Identityclip_by_global_norm/mul_1*
T0*&
_class
loc:@input_embedding_mat
�
clip_by_global_norm/mul_2Mul0gradients/map/while/transpose/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
*clip_by_global_norm/clip_by_global_norm/_1Identityclip_by_global_norm/mul_2*
T0*,
_class"
 loc:@map/while/transpose/Enter
�
clip_by_global_norm/mul_3Mul,gradients/map/while/Add_1/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*(
_class
loc:@map/while/Add_1/Enter
�
*clip_by_global_norm/clip_by_global_norm/_2Identityclip_by_global_norm/mul_3*
T0*(
_class
loc:@map/while/Add_1/Enter
�
clip_by_global_norm/mul_4Mul2gradients/map_1/while/transpose/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
*clip_by_global_norm/clip_by_global_norm/_3Identityclip_by_global_norm/mul_4*
T0*.
_class$
" loc:@map_1/while/transpose/Enter
�
clip_by_global_norm/mul_5Mul.gradients/map_1/while/Add_1/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
*clip_by_global_norm/clip_by_global_norm/_4Identityclip_by_global_norm/mul_5*
T0**
_class 
loc:@map_1/while/Add_1/Enter
�
clip_by_global_norm/mul_6MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
*clip_by_global_norm/clip_by_global_norm/_5Identityclip_by_global_norm/mul_6*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/MatMul/Enter
�
clip_by_global_norm/mul_7MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
*clip_by_global_norm/clip_by_global_norm/_6Identityclip_by_global_norm/mul_7*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_0/lstm_cell/BiasAdd/Enter
�
clip_by_global_norm/mul_8MulQgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
*clip_by_global_norm/clip_by_global_norm/_7Identityclip_by_global_norm/mul_8*
T0*M
_classC
A?loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/MatMul/Enter
�
clip_by_global_norm/mul_9MulRgradients/rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter_grad/b_acc_3clip_by_global_norm/Select*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
*clip_by_global_norm/clip_by_global_norm/_8Identityclip_by_global_norm/mul_9*
T0*N
_classD
B@loc:@rnn/while/rnn/multi_rnn_cell/cell_1/lstm_cell/BiasAdd/Enter
�
-input_embedding_mat/Adagrad/Initializer/ConstConst* 
valueB���*���=*&
_class
loc:@input_embedding_mat*
dtype0
�
input_embedding_mat/Adagrad
VariableV2*
dtype0*
	container *
shape:���*
shared_name *&
_class
loc:@input_embedding_mat
�
"input_embedding_mat/Adagrad/AssignAssigninput_embedding_mat/Adagrad-input_embedding_mat/Adagrad/Initializer/Const*
use_locking(*
T0*&
_class
loc:@input_embedding_mat*
validate_shape(
z
 input_embedding_mat/Adagrad/readIdentityinput_embedding_mat/Adagrad*
T0*&
_class
loc:@input_embedding_mat
�
4output_class_embedding_mat/Adagrad/Initializer/ConstConst*
valueB
��*���=*-
_class#
!loc:@output_class_embedding_mat*
dtype0
�
"output_class_embedding_mat/Adagrad
VariableV2*
shape:
��*
shared_name *-
_class#
!loc:@output_class_embedding_mat*
dtype0*
	container 
�
)output_class_embedding_mat/Adagrad/AssignAssign"output_class_embedding_mat/Adagrad4output_class_embedding_mat/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
T0*-
_class#
!loc:@output_class_embedding_mat
�
'output_class_embedding_mat/Adagrad/readIdentity"output_class_embedding_mat/Adagrad*
T0*-
_class#
!loc:@output_class_embedding_mat
�
5output_class_embedding_bias/Adagrad/Initializer/ConstConst*
valueB�*���=*.
_class$
" loc:@output_class_embedding_bias*
dtype0
�
#output_class_embedding_bias/Adagrad
VariableV2*
shared_name *.
_class$
" loc:@output_class_embedding_bias*
dtype0*
	container *
shape:�
�
*output_class_embedding_bias/Adagrad/AssignAssign#output_class_embedding_bias/Adagrad5output_class_embedding_bias/Adagrad/Initializer/Const*
use_locking(*
T0*.
_class$
" loc:@output_class_embedding_bias*
validate_shape(
�
(output_class_embedding_bias/Adagrad/readIdentity#output_class_embedding_bias/Adagrad*
T0*.
_class$
" loc:@output_class_embedding_bias
�
5output_wordid_embedding_mat/Adagrad/Initializer/ConstConst*
dtype0*
valueB
��*���=*.
_class$
" loc:@output_wordid_embedding_mat
�
#output_wordid_embedding_mat/Adagrad
VariableV2*.
_class$
" loc:@output_wordid_embedding_mat*
dtype0*
	container *
shape:
��*
shared_name 
�
*output_wordid_embedding_mat/Adagrad/AssignAssign#output_wordid_embedding_mat/Adagrad5output_wordid_embedding_mat/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
(output_wordid_embedding_mat/Adagrad/readIdentity#output_wordid_embedding_mat/Adagrad*
T0*.
_class$
" loc:@output_wordid_embedding_mat
�
6output_wordid_embedding_bias/Adagrad/Initializer/ConstConst*
valueB�*���=*/
_class%
#!loc:@output_wordid_embedding_bias*
dtype0
�
$output_wordid_embedding_bias/Adagrad
VariableV2*/
_class%
#!loc:@output_wordid_embedding_bias*
dtype0*
	container *
shape:�*
shared_name 
�
+output_wordid_embedding_bias/Adagrad/AssignAssign$output_wordid_embedding_bias/Adagrad6output_wordid_embedding_bias/Adagrad/Initializer/Const*
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
validate_shape(*
use_locking(
�
)output_wordid_embedding_bias/Adagrad/readIdentity$output_wordid_embedding_bias/Adagrad*
T0*/
_class%
#!loc:@output_wordid_embedding_bias
�
Drnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad/Initializer/ConstConst*
valueB
��	*���=*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0
�
2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad
VariableV2*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
dtype0*
	container *
shape:
��	
�
9rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad/AssignAssign2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdagradDrnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad/Initializer/Const*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(
�
7rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad/readIdentity2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel
�
Brnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad/Initializer/ConstConst*
valueB�	*���=*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0
�
0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad
VariableV2*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
dtype0*
	container *
shape:�	
�
7rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad/AssignAssign0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdagradBrnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad/Initializer/Const*
validate_shape(*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
5rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad/readIdentity0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias
�
Drnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad/Initializer/ConstConst*
valueB
��	*���=*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
dtype0
�
2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad
VariableV2*
dtype0*
	container *
shape:
��	*
shared_name *=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
9rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad/AssignAssign2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdagradDrnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad/Initializer/Const*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(
�
7rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad/readIdentity2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel
�
Brnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad/Initializer/ConstConst*
dtype0*
valueB�	*���=*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad
VariableV2*
shape:�	*
shared_name *;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
dtype0*
	container 
�
7rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad/AssignAssign0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdagradBrnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad/Initializer/Const*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(
�
5rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad/readIdentity0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias
�
/train/updates/update_input_embedding_mat/UniqueUnique)gradients/embedding_lookup_grad/Reshape_1*
out_idx0*
T0*&
_class
loc:@input_embedding_mat
�
.train/updates/update_input_embedding_mat/ShapeShape/train/updates/update_input_embedding_mat/Unique*
T0*&
_class
loc:@input_embedding_mat*
out_type0
�
<train/updates/update_input_embedding_mat/strided_slice/stackConst*
dtype0*&
_class
loc:@input_embedding_mat*
valueB: 
�
>train/updates/update_input_embedding_mat/strided_slice/stack_1Const*&
_class
loc:@input_embedding_mat*
valueB:*
dtype0
�
>train/updates/update_input_embedding_mat/strided_slice/stack_2Const*
dtype0*&
_class
loc:@input_embedding_mat*
valueB:
�
6train/updates/update_input_embedding_mat/strided_sliceStridedSlice.train/updates/update_input_embedding_mat/Shape<train/updates/update_input_embedding_mat/strided_slice/stack>train/updates/update_input_embedding_mat/strided_slice/stack_1>train/updates/update_input_embedding_mat/strided_slice/stack_2*
Index0*
T0*&
_class
loc:@input_embedding_mat*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
�
;train/updates/update_input_embedding_mat/UnsortedSegmentSumUnsortedSegmentSum*clip_by_global_norm/clip_by_global_norm/_01train/updates/update_input_embedding_mat/Unique:16train/updates/update_input_embedding_mat/strided_slice*
Tnumsegments0*
Tindices0*
T0*&
_class
loc:@input_embedding_mat
�
;train/updates/update_input_embedding_mat/SparseApplyAdagradSparseApplyAdagradinput_embedding_matinput_embedding_mat/Adagradtrain/learning_rate/Merge;train/updates/update_input_embedding_mat/UnsortedSegmentSum/train/updates/update_input_embedding_mat/Unique*
update_slots(*
use_locking( *
Tindices0*
T0*&
_class
loc:@input_embedding_mat
�
<train/updates/update_output_class_embedding_mat/ApplyAdagradApplyAdagradoutput_class_embedding_mat"output_class_embedding_mat/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_1*
T0*-
_class#
!loc:@output_class_embedding_mat*
update_slots(*
use_locking( 
�
=train/updates/update_output_class_embedding_bias/ApplyAdagradApplyAdagradoutput_class_embedding_bias#output_class_embedding_bias/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_2*
use_locking( *
T0*.
_class$
" loc:@output_class_embedding_bias*
update_slots(
�
=train/updates/update_output_wordid_embedding_mat/ApplyAdagradApplyAdagradoutput_wordid_embedding_mat#output_wordid_embedding_mat/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_3*
T0*.
_class$
" loc:@output_wordid_embedding_mat*
update_slots(*
use_locking( 
�
>train/updates/update_output_wordid_embedding_bias/ApplyAdagradApplyAdagradoutput_wordid_embedding_bias$output_wordid_embedding_bias/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_4*
use_locking( *
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
update_slots(
�
Ltrain/updates/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdagradApplyAdagrad*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_5*
use_locking( *
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
update_slots(
�
Jtrain/updates/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdagradApplyAdagrad(rnn/multi_rnn_cell/cell_0/lstm_cell/bias0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_6*
use_locking( *
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
update_slots(
�
Ltrain/updates/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdagradApplyAdagrad*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_7*
use_locking( *
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
update_slots(
�
Jtrain/updates/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdagradApplyAdagrad(rnn/multi_rnn_cell/cell_1/lstm_cell/bias0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagradtrain/learning_rate/Merge*clip_by_global_norm/clip_by_global_norm/_8*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
update_slots(*
use_locking( 
�
train/updates/updateNoOp<^train/updates/update_input_embedding_mat/SparseApplyAdagrad>^train/updates/update_output_class_embedding_bias/ApplyAdagrad=^train/updates/update_output_class_embedding_mat/ApplyAdagrad?^train/updates/update_output_wordid_embedding_bias/ApplyAdagrad>^train/updates/update_output_wordid_embedding_mat/ApplyAdagradK^train/updates/update_rnn/multi_rnn_cell/cell_0/lstm_cell/bias/ApplyAdagradM^train/updates/update_rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/ApplyAdagradK^train/updates/update_rnn/multi_rnn_cell/cell_1/lstm_cell/bias/ApplyAdagradM^train/updates/update_rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/ApplyAdagrad
z
train/updates/valueConst^train/updates/update*$
_class
loc:@train/global_step*
value	B :*
dtype0
�
train/updates	AssignAddtrain/global_steptrain/updates/value*
use_locking( *
T0*$
_class
loc:@train/global_step
C
	test_widsPlaceholder*
dtype0*
shape:���������
C
	test_cidsPlaceholder*
dtype0*
shape:���������
2
ShapeShape	test_cids*
T0*
out_type0
H
strided_slice/stackConst*
dtype0*
valueB"����    
J
strided_slice/stack_1Const*
dtype0*
valueB"        
J
strided_slice/stack_2Const*
valueB"      *
dtype0
�
strided_sliceStridedSliceclstrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask *
end_mask
3
ConstConst*
valueB: *
dtype0
9
	ReverseV2	ReverseV2ShapeConst*

Tidx0*
T0
A
bcclTilestrided_slice	ReverseV2*

Tmultiples0*
T0
F
Reshape_3/shapeConst*
valueB:
���������*
dtype0
G
	Reshape_3Reshape	test_cidsReshape_3/shape*
T0*
Tshape0
<
cidlosses/ShapeShape	Reshape_3*
T0*
out_type0
c
cidlosses/cidlosses#SparseSoftmaxCrossEntropyWithLogitsbccl	Reshape_3*
T0*
Tlabels0
J
strided_slice_1/stackConst*
dtype0*
valueB"����    
L
strided_slice_1/stack_1Const*
valueB"        *
dtype0
L
strided_slice_1/stack_2Const*
valueB"      *
dtype0
�
strided_slice_1StridedSlice	Reshape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
end_mask*
Index0*
T0*
shrink_axis_mask *

begin_mask*
ellipsis_mask *
new_axis_mask 
5
Const_1Const*
dtype0*
valueB: 
=
ReverseV2_1	ReverseV2ShapeConst_1*

Tidx0*
T0
E
TileTilestrided_slice_1ReverseV2_1*

Tmultiples0*
T0
F
Reshape_4/shapeConst*
valueB:
���������*
dtype0
G
	Reshape_4Reshape	test_widsReshape_4/shape*
T0*
Tshape0
<
widlosses/ShapeShape	Reshape_4*
T0*
out_type0
c
widlosses/widlosses#SparseSoftmaxCrossEntropyWithLogitsTile	Reshape_4*
T0*
Tlabels0
E
test_lossesAddwidlosses/widlossescidlosses/cidlosses*
T0
�
initNoOp#^input_embedding_mat/Adagrad/Assign^input_embedding_mat/Assign+^output_class_embedding_bias/Adagrad/Assign#^output_class_embedding_bias/Assign*^output_class_embedding_mat/Adagrad/Assign"^output_class_embedding_mat/Assign,^output_wordid_embedding_bias/Adagrad/Assign$^output_wordid_embedding_bias/Assign+^output_wordid_embedding_mat/Adagrad/Assign#^output_wordid_embedding_mat/Assign8^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad/Assign0^rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Assign:^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad/Assign2^rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Assign8^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad/Assign0^rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Assign:^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagrad/Assign2^rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Assign^train/global_step/Assign
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
�
save/SaveV2/tensor_namesConst*�
value�B�Binput_embedding_matBinput_embedding_mat/AdagradBoutput_class_embedding_biasB#output_class_embedding_bias/AdagradBoutput_class_embedding_matB"output_class_embedding_mat/AdagradBoutput_wordid_embedding_biasB$output_wordid_embedding_bias/AdagradBoutput_wordid_embedding_matB#output_wordid_embedding_mat/AdagradB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdagradB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdagradB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdagradB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdagradBtrain/global_step*
dtype0
m
save/SaveV2/shape_and_slicesConst*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesinput_embedding_matinput_embedding_mat/Adagradoutput_class_embedding_bias#output_class_embedding_bias/Adagradoutput_class_embedding_mat"output_class_embedding_mat/Adagradoutput_wordid_embedding_bias$output_wordid_embedding_bias/Adagradoutput_wordid_embedding_mat#output_wordid_embedding_mat/Adagrad(rnn/multi_rnn_cell/cell_0/lstm_cell/bias0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagrad*rnn/multi_rnn_cell/cell_0/lstm_cell/kernel2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagrad(rnn/multi_rnn_cell/cell_1/lstm_cell/bias0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagrad*rnn/multi_rnn_cell/cell_1/lstm_cell/kernel2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagradtrain/global_step*!
dtypes
2
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
�
save/RestoreV2/tensor_namesConst"/device:CPU:0*�
value�B�Binput_embedding_matBinput_embedding_mat/AdagradBoutput_class_embedding_biasB#output_class_embedding_bias/AdagradBoutput_class_embedding_matB"output_class_embedding_mat/AdagradBoutput_wordid_embedding_biasB$output_wordid_embedding_bias/AdagradBoutput_wordid_embedding_matB#output_wordid_embedding_mat/AdagradB(rnn/multi_rnn_cell/cell_0/lstm_cell/biasB0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/AdagradB*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelB2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/AdagradB(rnn/multi_rnn_cell/cell_1/lstm_cell/biasB0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/AdagradB*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelB2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/AdagradBtrain/global_step*
dtype0

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*9
value0B.B B B B B B B B B B B B B B B B B B B *
dtype0
�
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*!
dtypes
2
�
save/AssignAssigninput_embedding_matsave/RestoreV2*
T0*&
_class
loc:@input_embedding_mat*
validate_shape(*
use_locking(
�
save/Assign_1Assigninput_embedding_mat/Adagradsave/RestoreV2:1*
validate_shape(*
use_locking(*
T0*&
_class
loc:@input_embedding_mat
�
save/Assign_2Assignoutput_class_embedding_biassave/RestoreV2:2*
T0*.
_class$
" loc:@output_class_embedding_bias*
validate_shape(*
use_locking(
�
save/Assign_3Assign#output_class_embedding_bias/Adagradsave/RestoreV2:3*
use_locking(*
T0*.
_class$
" loc:@output_class_embedding_bias*
validate_shape(
�
save/Assign_4Assignoutput_class_embedding_matsave/RestoreV2:4*
use_locking(*
T0*-
_class#
!loc:@output_class_embedding_mat*
validate_shape(
�
save/Assign_5Assign"output_class_embedding_mat/Adagradsave/RestoreV2:5*
use_locking(*
T0*-
_class#
!loc:@output_class_embedding_mat*
validate_shape(
�
save/Assign_6Assignoutput_wordid_embedding_biassave/RestoreV2:6*
use_locking(*
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
validate_shape(
�
save/Assign_7Assign$output_wordid_embedding_bias/Adagradsave/RestoreV2:7*
use_locking(*
T0*/
_class%
#!loc:@output_wordid_embedding_bias*
validate_shape(
�
save/Assign_8Assignoutput_wordid_embedding_matsave/RestoreV2:8*
T0*.
_class$
" loc:@output_wordid_embedding_mat*
validate_shape(*
use_locking(
�
save/Assign_9Assign#output_wordid_embedding_mat/Adagradsave/RestoreV2:9*
T0*.
_class$
" loc:@output_wordid_embedding_mat*
validate_shape(*
use_locking(
�
save/Assign_10Assign(rnn/multi_rnn_cell/cell_0/lstm_cell/biassave/RestoreV2:10*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
�
save/Assign_11Assign0rnn/multi_rnn_cell/cell_0/lstm_cell/bias/Adagradsave/RestoreV2:11*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/bias*
validate_shape(
�
save/Assign_12Assign*rnn/multi_rnn_cell/cell_0/lstm_cell/kernelsave/RestoreV2:12*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(
�
save/Assign_13Assign2rnn/multi_rnn_cell/cell_0/lstm_cell/kernel/Adagradsave/RestoreV2:13*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_0/lstm_cell/kernel*
validate_shape(
�
save/Assign_14Assign(rnn/multi_rnn_cell/cell_1/lstm_cell/biassave/RestoreV2:14*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(
�
save/Assign_15Assign0rnn/multi_rnn_cell/cell_1/lstm_cell/bias/Adagradsave/RestoreV2:15*
use_locking(*
T0*;
_class1
/-loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/bias*
validate_shape(
�
save/Assign_16Assign*rnn/multi_rnn_cell/cell_1/lstm_cell/kernelsave/RestoreV2:16*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(*
use_locking(
�
save/Assign_17Assign2rnn/multi_rnn_cell/cell_1/lstm_cell/kernel/Adagradsave/RestoreV2:17*
use_locking(*
T0*=
_class3
1/loc:@rnn/multi_rnn_cell/cell_1/lstm_cell/kernel*
validate_shape(
�
save/Assign_18Assigntrain/global_stepsave/RestoreV2:18*
validate_shape(*
use_locking(*
T0*$
_class
loc:@train/global_step
�
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9"&