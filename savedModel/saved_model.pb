ČĖ
ė*½*
:
Add
x"T
y"T
z"T"
Ttype:
2	
ī
	ApplyAdam
var"T	
m"T	
v"T
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
ģ
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)


Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
,
Floor
x"T
y"T"
Ttype:
2
?
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
.
Identity

input"T
output"T"	
Ttype
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Ō
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
ī
MaxPoolGrad

orig_input"T
orig_output"T	
grad"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype0:
2	
;
Maximum
x"T
y"T
z"T"
Ttype:

2	

Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 

Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
D
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
e
ShapeN
input"T*N
output"out_type*N"
Nint(0"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring 
&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.10.02v1.10.0-rc1-19-g656e7a2b34³’
N
	keep_probPlaceholder*
dtype0*
_output_shapes
:*
shape:
~
PlaceholderPlaceholder*$
shape:’’’’’’’’’  *
dtype0*/
_output_shapes
:’’’’’’’’’  
R
Placeholder_1Placeholder*
shape:*
dtype0*
_output_shapes
:

Placeholder_2Placeholder*
dtype0*/
_output_shapes
:’’’’’’’’’  *$
shape:’’’’’’’’’  
R
Placeholder_3Placeholder*
dtype0*
_output_shapes
:*
shape:
h
x_inputPlaceholder*
shape:  *
dtype0*&
_output_shapes
:  
Q
y_targetPlaceholder*
shape:*
dtype0*
_output_shapes
:
o
truncated_normal/shapeConst*%
valueB"             *
dtype0*
_output_shapes
:
Z
truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
\
truncated_normal/stddevConst*
valueB
 *ĶĢĢ=*
dtype0*
_output_shapes
: 
¢
 truncated_normal/TruncatedNormalTruncatedNormaltruncated_normal/shape*

seed *
T0*
dtype0*
seed2 *&
_output_shapes
: 

truncated_normal/mulMul truncated_normal/TruncatedNormaltruncated_normal/stddev*&
_output_shapes
: *
T0
u
truncated_normalAddtruncated_normal/multruncated_normal/mean*
T0*&
_output_shapes
: 

Variable
VariableV2*
shared_name *
dtype0*
	container *&
_output_shapes
: *
shape: 
¬
Variable/AssignAssignVariabletruncated_normal*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
q
Variable/readIdentityVariable*
T0*
_class
loc:@Variable*&
_output_shapes
: 
R
zerosConst*
dtype0*
_output_shapes
: *
valueB *    
v

Variable_1
VariableV2*
shape: *
shared_name *
dtype0*
	container *
_output_shapes
: 

Variable_1/AssignAssign
Variable_1zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
k
Variable_1/readIdentity
Variable_1*
_output_shapes
: *
T0*
_class
loc:@Variable_1
q
truncated_normal_1/shapeConst*%
valueB"          @   *
dtype0*
_output_shapes
:
\
truncated_normal_1/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_1/stddevConst*
valueB
 *ĶĢĢ=*
dtype0*
_output_shapes
: 
¦
"truncated_normal_1/TruncatedNormalTruncatedNormaltruncated_normal_1/shape*
dtype0*
seed2 *&
_output_shapes
: @*

seed *
T0

truncated_normal_1/mulMul"truncated_normal_1/TruncatedNormaltruncated_normal_1/stddev*
T0*&
_output_shapes
: @
{
truncated_normal_1Addtruncated_normal_1/multruncated_normal_1/mean*
T0*&
_output_shapes
: @


Variable_2
VariableV2*
shape: @*
shared_name *
dtype0*
	container *&
_output_shapes
: @
“
Variable_2/AssignAssign
Variable_2truncated_normal_1*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0
w
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @
T
zeros_1Const*
valueB@*    *
dtype0*
_output_shapes
:@
v

Variable_3
VariableV2*
dtype0*
	container *
_output_shapes
:@*
shape:@*
shared_name 

Variable_3/AssignAssign
Variable_3zeros_1*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
k
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3*
_output_shapes
:@
i
truncated_normal_2/shapeConst*
valueB"   x   *
dtype0*
_output_shapes
:
\
truncated_normal_2/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_2/stddevConst*
valueB
 *ĶĢĢ=*
dtype0*
_output_shapes
: 

"truncated_normal_2/TruncatedNormalTruncatedNormaltruncated_normal_2/shape*

seed *
T0*
dtype0*
seed2 *
_output_shapes
:	 x

truncated_normal_2/mulMul"truncated_normal_2/TruncatedNormaltruncated_normal_2/stddev*
T0*
_output_shapes
:	 x
t
truncated_normal_2Addtruncated_normal_2/multruncated_normal_2/mean*
_output_shapes
:	 x*
T0


Variable_4
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:	 x*
shape:	 x
­
Variable_4/AssignAssign
Variable_4truncated_normal_2*
_output_shapes
:	 x*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
p
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4*
_output_shapes
:	 x
b
truncated_normal_3/shapeConst*
valueB:x*
dtype0*
_output_shapes
:
\
truncated_normal_3/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_3/stddevConst*
_output_shapes
: *
valueB
 *ĶĢĢ=*
dtype0

"truncated_normal_3/TruncatedNormalTruncatedNormaltruncated_normal_3/shape*
dtype0*
seed2 *
_output_shapes
:x*

seed *
T0

truncated_normal_3/mulMul"truncated_normal_3/TruncatedNormaltruncated_normal_3/stddev*
T0*
_output_shapes
:x
o
truncated_normal_3Addtruncated_normal_3/multruncated_normal_3/mean*
T0*
_output_shapes
:x
v

Variable_5
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:x*
shape:x
Ø
Variable_5/AssignAssign
Variable_5truncated_normal_3*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
k
Variable_5/readIdentity
Variable_5*
_output_shapes
:x*
T0*
_class
loc:@Variable_5
i
truncated_normal_4/shapeConst*
valueB"x   <   *
dtype0*
_output_shapes
:
\
truncated_normal_4/meanConst*
_output_shapes
: *
valueB
 *    *
dtype0
^
truncated_normal_4/stddevConst*
valueB
 *ĶĢĢ=*
dtype0*
_output_shapes
: 

"truncated_normal_4/TruncatedNormalTruncatedNormaltruncated_normal_4/shape*
T0*
dtype0*
seed2 *
_output_shapes

:x<*

seed 

truncated_normal_4/mulMul"truncated_normal_4/TruncatedNormaltruncated_normal_4/stddev*
_output_shapes

:x<*
T0
s
truncated_normal_4Addtruncated_normal_4/multruncated_normal_4/mean*
T0*
_output_shapes

:x<
~

Variable_6
VariableV2*
	container *
_output_shapes

:x<*
shape
:x<*
shared_name *
dtype0
¬
Variable_6/AssignAssign
Variable_6truncated_normal_4*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<
o
Variable_6/readIdentity
Variable_6*
_output_shapes

:x<*
T0*
_class
loc:@Variable_6
b
truncated_normal_5/shapeConst*
valueB:<*
dtype0*
_output_shapes
:
\
truncated_normal_5/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_5/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ=

"truncated_normal_5/TruncatedNormalTruncatedNormaltruncated_normal_5/shape*
T0*
dtype0*
seed2 *
_output_shapes
:<*

seed 

truncated_normal_5/mulMul"truncated_normal_5/TruncatedNormaltruncated_normal_5/stddev*
T0*
_output_shapes
:<
o
truncated_normal_5Addtruncated_normal_5/multruncated_normal_5/mean*
_output_shapes
:<*
T0
v

Variable_7
VariableV2*
dtype0*
	container *
_output_shapes
:<*
shape:<*
shared_name 
Ø
Variable_7/AssignAssign
Variable_7truncated_normal_5*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
k
Variable_7/readIdentity
Variable_7*
_output_shapes
:<*
T0*
_class
loc:@Variable_7
i
truncated_normal_6/shapeConst*
_output_shapes
:*
valueB"<      *
dtype0
\
truncated_normal_6/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_6/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ=

"truncated_normal_6/TruncatedNormalTruncatedNormaltruncated_normal_6/shape*

seed *
T0*
dtype0*
seed2 *
_output_shapes

:<

truncated_normal_6/mulMul"truncated_normal_6/TruncatedNormaltruncated_normal_6/stddev*
T0*
_output_shapes

:<
s
truncated_normal_6Addtruncated_normal_6/multruncated_normal_6/mean*
_output_shapes

:<*
T0
~

Variable_8
VariableV2*
dtype0*
	container *
_output_shapes

:<*
shape
:<*
shared_name 
¬
Variable_8/AssignAssign
Variable_8truncated_normal_6*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<
o
Variable_8/readIdentity
Variable_8*
_output_shapes

:<*
T0*
_class
loc:@Variable_8
b
truncated_normal_7/shapeConst*
valueB:*
dtype0*
_output_shapes
:
\
truncated_normal_7/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
^
truncated_normal_7/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ĶĢĢ=

"truncated_normal_7/TruncatedNormalTruncatedNormaltruncated_normal_7/shape*
T0*
dtype0*
seed2 *
_output_shapes
:*

seed 

truncated_normal_7/mulMul"truncated_normal_7/TruncatedNormaltruncated_normal_7/stddev*
T0*
_output_shapes
:
o
truncated_normal_7Addtruncated_normal_7/multruncated_normal_7/mean*
T0*
_output_shapes
:
v

Variable_9
VariableV2*
shared_name *
dtype0*
	container *
_output_shapes
:*
shape:
Ø
Variable_9/AssignAssign
Variable_9truncated_normal_7*
validate_shape(*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_9
k
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9*
_output_shapes
:
Ō
Conv2DConv2DPlaceholderVariable/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’   
|
BiasAddBiasAddConv2DVariable_1/read*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’   *
T0
O
ReluReluBiasAdd*/
_output_shapes
:’’’’’’’’’   *
T0
¤
MaxPoolMaxPoolRelu*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’ *
T0*
strides
*
data_formatNHWC
T
dropout/ShapeShapeMaxPool*
T0*
out_type0*
_output_shapes
:
_
dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
_
dropout/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
¤
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape*
seed2 */
_output_shapes
:’’’’’’’’’ *

seed *
T0*
dtype0
z
dropout/random_uniform/subSubdropout/random_uniform/maxdropout/random_uniform/min*
T0*
_output_shapes
: 

dropout/random_uniform/mulMul$dropout/random_uniform/RandomUniformdropout/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’ 

dropout/random_uniformAdddropout/random_uniform/muldropout/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’ 
X
dropout/addAdd	keep_probdropout/random_uniform*
T0*
_output_shapes
:
F
dropout/FloorFloordropout/add*
_output_shapes
:*
T0
M
dropout/divRealDivMaxPool	keep_prob*
_output_shapes
:*
T0
h
dropout/mulMuldropout/divdropout/Floor*/
_output_shapes
:’’’’’’’’’ *
T0
Ų
Conv2D_1Conv2Ddropout/mulVariable_2/read*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(

	BiasAdd_1BiasAddConv2D_1Variable_3/read*
T0*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’@
S
Relu_1Relu	BiasAdd_1*
T0*/
_output_shapes
:’’’’’’’’’@
Ø
	MaxPool_1MaxPoolRelu_1*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
T0
X
dropout_1/ShapeShape	MaxPool_1*
T0*
out_type0*
_output_shapes
:
a
dropout_1/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_1/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ø
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape*

seed *
T0*
dtype0*
seed2 */
_output_shapes
:’’’’’’’’’@

dropout_1/random_uniform/subSubdropout_1/random_uniform/maxdropout_1/random_uniform/min*
T0*
_output_shapes
: 
£
dropout_1/random_uniform/mulMul&dropout_1/random_uniform/RandomUniformdropout_1/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_1/random_uniformAdddropout_1/random_uniform/muldropout_1/random_uniform/min*/
_output_shapes
:’’’’’’’’’@*
T0
\
dropout_1/addAdd	keep_probdropout_1/random_uniform*
T0*
_output_shapes
:
J
dropout_1/FloorFloordropout_1/add*
T0*
_output_shapes
:
Q
dropout_1/divRealDiv	MaxPool_1	keep_prob*
T0*
_output_shapes
:
n
dropout_1/mulMuldropout_1/divdropout_1/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
b
Flatten/flatten/ShapeShapedropout_1/mul*
out_type0*
_output_shapes
:*
T0
m
#Flatten/flatten/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 
o
%Flatten/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
o
%Flatten/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
É
Flatten/flatten/strided_sliceStridedSliceFlatten/flatten/Shape#Flatten/flatten/strided_slice/stack%Flatten/flatten/strided_slice/stack_1%Flatten/flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
j
Flatten/flatten/Reshape/shape/1Const*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 

Flatten/flatten/Reshape/shapePackFlatten/flatten/strided_sliceFlatten/flatten/Reshape/shape/1*

axis *
N*
_output_shapes
:*
T0

Flatten/flatten/ReshapeReshapedropout_1/mulFlatten/flatten/Reshape/shape*
Tshape0*(
_output_shapes
:’’’’’’’’’ *
T0

MatMulMatMulFlatten/flatten/ReshapeVariable_4/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’x*
transpose_b( 
U
AddAddMatMulVariable_5/read*'
_output_shapes
:’’’’’’’’’x*
T0
E
Relu_2ReluAdd*'
_output_shapes
:’’’’’’’’’x*
T0
U
dropout_2/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
a
dropout_2/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_2/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape*

seed *
T0*
dtype0*
seed2 *'
_output_shapes
:’’’’’’’’’x

dropout_2/random_uniform/subSubdropout_2/random_uniform/maxdropout_2/random_uniform/min*
T0*
_output_shapes
: 

dropout_2/random_uniform/mulMul&dropout_2/random_uniform/RandomUniformdropout_2/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’x

dropout_2/random_uniformAdddropout_2/random_uniform/muldropout_2/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’x
\
dropout_2/addAdd	keep_probdropout_2/random_uniform*
_output_shapes
:*
T0
J
dropout_2/FloorFloordropout_2/add*
_output_shapes
:*
T0
N
dropout_2/divRealDivRelu_2	keep_prob*
T0*
_output_shapes
:
f
dropout_2/mulMuldropout_2/divdropout_2/Floor*
T0*'
_output_shapes
:’’’’’’’’’x

MatMul_1MatMuldropout_2/mulVariable_6/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’<*
transpose_b( *
T0
Y
Add_1AddMatMul_1Variable_7/read*
T0*'
_output_shapes
:’’’’’’’’’<
G
Relu_3ReluAdd_1*
T0*'
_output_shapes
:’’’’’’’’’<
U
dropout_3/ShapeShapeRelu_3*
T0*
out_type0*
_output_shapes
:
a
dropout_3/random_uniform/minConst*
_output_shapes
: *
valueB
 *    *
dtype0
a
dropout_3/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape*
seed2 *'
_output_shapes
:’’’’’’’’’<*

seed *
T0*
dtype0

dropout_3/random_uniform/subSubdropout_3/random_uniform/maxdropout_3/random_uniform/min*
_output_shapes
: *
T0

dropout_3/random_uniform/mulMul&dropout_3/random_uniform/RandomUniformdropout_3/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’<

dropout_3/random_uniformAdddropout_3/random_uniform/muldropout_3/random_uniform/min*'
_output_shapes
:’’’’’’’’’<*
T0
\
dropout_3/addAdd	keep_probdropout_3/random_uniform*
T0*
_output_shapes
:
J
dropout_3/FloorFloordropout_3/add*
T0*
_output_shapes
:
N
dropout_3/divRealDivRelu_3	keep_prob*
T0*
_output_shapes
:
f
dropout_3/mulMuldropout_3/divdropout_3/Floor*
T0*'
_output_shapes
:’’’’’’’’’<

MatMul_2MatMuldropout_3/mulVariable_8/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’
Y
Add_2AddMatMul_2Variable_9/read*'
_output_shapes
:’’’’’’’’’*
T0
Ų
Conv2D_2Conv2DPlaceholder_2Variable/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’   

	BiasAdd_2BiasAddConv2D_2Variable_1/read*
T0*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’   
S
Relu_4Relu	BiasAdd_2*
T0*/
_output_shapes
:’’’’’’’’’   
Ø
	MaxPool_2MaxPoolRelu_4*/
_output_shapes
:’’’’’’’’’ *
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
X
dropout_4/ShapeShape	MaxPool_2*
out_type0*
_output_shapes
:*
T0
a
dropout_4/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
a
dropout_4/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ø
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape*

seed *
T0*
dtype0*
seed2 */
_output_shapes
:’’’’’’’’’ 

dropout_4/random_uniform/subSubdropout_4/random_uniform/maxdropout_4/random_uniform/min*
T0*
_output_shapes
: 
£
dropout_4/random_uniform/mulMul&dropout_4/random_uniform/RandomUniformdropout_4/random_uniform/sub*/
_output_shapes
:’’’’’’’’’ *
T0

dropout_4/random_uniformAdddropout_4/random_uniform/muldropout_4/random_uniform/min*/
_output_shapes
:’’’’’’’’’ *
T0
\
dropout_4/addAdd	keep_probdropout_4/random_uniform*
_output_shapes
:*
T0
J
dropout_4/FloorFloordropout_4/add*
_output_shapes
:*
T0
Q
dropout_4/divRealDiv	MaxPool_2	keep_prob*
_output_shapes
:*
T0
n
dropout_4/mulMuldropout_4/divdropout_4/Floor*/
_output_shapes
:’’’’’’’’’ *
T0
Ś
Conv2D_3Conv2Ddropout_4/mulVariable_2/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
	dilations
*
T0

	BiasAdd_3BiasAddConv2D_3Variable_3/read*
data_formatNHWC*/
_output_shapes
:’’’’’’’’’@*
T0
S
Relu_5Relu	BiasAdd_3*
T0*/
_output_shapes
:’’’’’’’’’@
Ø
	MaxPool_3MaxPoolRelu_5*/
_output_shapes
:’’’’’’’’’@*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingSAME
X
dropout_5/ShapeShape	MaxPool_3*
T0*
out_type0*
_output_shapes
:
a
dropout_5/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_5/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
Ø
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape*

seed *
T0*
dtype0*
seed2 */
_output_shapes
:’’’’’’’’’@

dropout_5/random_uniform/subSubdropout_5/random_uniform/maxdropout_5/random_uniform/min*
T0*
_output_shapes
: 
£
dropout_5/random_uniform/mulMul&dropout_5/random_uniform/RandomUniformdropout_5/random_uniform/sub*
T0*/
_output_shapes
:’’’’’’’’’@

dropout_5/random_uniformAdddropout_5/random_uniform/muldropout_5/random_uniform/min*
T0*/
_output_shapes
:’’’’’’’’’@
\
dropout_5/addAdd	keep_probdropout_5/random_uniform*
T0*
_output_shapes
:
J
dropout_5/FloorFloordropout_5/add*
T0*
_output_shapes
:
Q
dropout_5/divRealDiv	MaxPool_3	keep_prob*
T0*
_output_shapes
:
n
dropout_5/mulMuldropout_5/divdropout_5/Floor*
T0*/
_output_shapes
:’’’’’’’’’@
d
Flatten_1/flatten/ShapeShapedropout_5/mul*
T0*
out_type0*
_output_shapes
:
o
%Flatten_1/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'Flatten_1/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
Flatten_1/flatten/strided_sliceStridedSliceFlatten_1/flatten/Shape%Flatten_1/flatten/strided_slice/stack'Flatten_1/flatten/strided_slice/stack_1'Flatten_1/flatten/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
l
!Flatten_1/flatten/Reshape/shape/1Const*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
„
Flatten_1/flatten/Reshape/shapePackFlatten_1/flatten/strided_slice!Flatten_1/flatten/Reshape/shape/1*
N*
_output_shapes
:*
T0*

axis 

Flatten_1/flatten/ReshapeReshapedropout_5/mulFlatten_1/flatten/Reshape/shape*
T0*
Tshape0*(
_output_shapes
:’’’’’’’’’ 

MatMul_3MatMulFlatten_1/flatten/ReshapeVariable_4/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’x*
transpose_b( 
Y
Add_3AddMatMul_3Variable_5/read*'
_output_shapes
:’’’’’’’’’x*
T0
G
Relu_6ReluAdd_3*'
_output_shapes
:’’’’’’’’’x*
T0
U
dropout_6/ShapeShapeRelu_6*
out_type0*
_output_shapes
:*
T0
a
dropout_6/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_6/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape*
dtype0*
seed2 *'
_output_shapes
:’’’’’’’’’x*

seed *
T0

dropout_6/random_uniform/subSubdropout_6/random_uniform/maxdropout_6/random_uniform/min*
_output_shapes
: *
T0

dropout_6/random_uniform/mulMul&dropout_6/random_uniform/RandomUniformdropout_6/random_uniform/sub*
T0*'
_output_shapes
:’’’’’’’’’x

dropout_6/random_uniformAdddropout_6/random_uniform/muldropout_6/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’x
\
dropout_6/addAdd	keep_probdropout_6/random_uniform*
T0*
_output_shapes
:
J
dropout_6/FloorFloordropout_6/add*
T0*
_output_shapes
:
N
dropout_6/divRealDivRelu_6	keep_prob*
_output_shapes
:*
T0
f
dropout_6/mulMuldropout_6/divdropout_6/Floor*'
_output_shapes
:’’’’’’’’’x*
T0

MatMul_4MatMuldropout_6/mulVariable_6/read*
transpose_b( *
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’<
Y
Add_4AddMatMul_4Variable_7/read*
T0*'
_output_shapes
:’’’’’’’’’<
G
Relu_7ReluAdd_4*'
_output_shapes
:’’’’’’’’’<*
T0
U
dropout_7/ShapeShapeRelu_7*
T0*
out_type0*
_output_shapes
:
a
dropout_7/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_7/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
 
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape*
T0*
dtype0*
seed2 *'
_output_shapes
:’’’’’’’’’<*

seed 

dropout_7/random_uniform/subSubdropout_7/random_uniform/maxdropout_7/random_uniform/min*
_output_shapes
: *
T0

dropout_7/random_uniform/mulMul&dropout_7/random_uniform/RandomUniformdropout_7/random_uniform/sub*'
_output_shapes
:’’’’’’’’’<*
T0

dropout_7/random_uniformAdddropout_7/random_uniform/muldropout_7/random_uniform/min*
T0*'
_output_shapes
:’’’’’’’’’<
\
dropout_7/addAdd	keep_probdropout_7/random_uniform*
T0*
_output_shapes
:
J
dropout_7/FloorFloordropout_7/add*
T0*
_output_shapes
:
N
dropout_7/divRealDivRelu_7	keep_prob*
_output_shapes
:*
T0
f
dropout_7/mulMuldropout_7/divdropout_7/Floor*'
_output_shapes
:’’’’’’’’’<*
T0

MatMul_5MatMuldropout_7/mulVariable_8/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’*
transpose_b( *
T0
Y
Add_5AddMatMul_5Variable_9/read*
T0*'
_output_shapes
:’’’’’’’’’
É
Conv2D_4Conv2Dx_inputVariable/read*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
:   *
	dilations
*
T0
w
	BiasAdd_4BiasAddConv2D_4Variable_1/read*
data_formatNHWC*&
_output_shapes
:   *
T0
J
Relu_8Relu	BiasAdd_4*
T0*&
_output_shapes
:   

	MaxPool_4MaxPoolRelu_8*&
_output_shapes
: *
T0*
strides
*
data_formatNHWC*
ksize
*
paddingSAME
h
dropout_8/ShapeConst*
_output_shapes
:*%
valueB"             *
dtype0
a
dropout_8/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
a
dropout_8/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

&dropout_8/random_uniform/RandomUniformRandomUniformdropout_8/Shape*
dtype0*
seed2 *&
_output_shapes
: *

seed *
T0

dropout_8/random_uniform/subSubdropout_8/random_uniform/maxdropout_8/random_uniform/min*
T0*
_output_shapes
: 

dropout_8/random_uniform/mulMul&dropout_8/random_uniform/RandomUniformdropout_8/random_uniform/sub*
T0*&
_output_shapes
: 

dropout_8/random_uniformAdddropout_8/random_uniform/muldropout_8/random_uniform/min*&
_output_shapes
: *
T0
\
dropout_8/addAdd	keep_probdropout_8/random_uniform*
T0*
_output_shapes
:
J
dropout_8/FloorFloordropout_8/add*
T0*
_output_shapes
:
Q
dropout_8/divRealDiv	MaxPool_4	keep_prob*
_output_shapes
:*
T0
e
dropout_8/mulMuldropout_8/divdropout_8/Floor*&
_output_shapes
: *
T0
Ń
Conv2D_5Conv2Ddropout_8/mulVariable_2/read*&
_output_shapes
:@*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
w
	BiasAdd_5BiasAddConv2D_5Variable_3/read*
data_formatNHWC*&
_output_shapes
:@*
T0
J
Relu_9Relu	BiasAdd_5*
T0*&
_output_shapes
:@

	MaxPool_5MaxPoolRelu_9*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*&
_output_shapes
:@*
T0
h
dropout_9/ShapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
a
dropout_9/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
a
dropout_9/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

&dropout_9/random_uniform/RandomUniformRandomUniformdropout_9/Shape*
T0*
dtype0*
seed2 *&
_output_shapes
:@*

seed 

dropout_9/random_uniform/subSubdropout_9/random_uniform/maxdropout_9/random_uniform/min*
_output_shapes
: *
T0

dropout_9/random_uniform/mulMul&dropout_9/random_uniform/RandomUniformdropout_9/random_uniform/sub*&
_output_shapes
:@*
T0

dropout_9/random_uniformAdddropout_9/random_uniform/muldropout_9/random_uniform/min*&
_output_shapes
:@*
T0
\
dropout_9/addAdd	keep_probdropout_9/random_uniform*
T0*
_output_shapes
:
J
dropout_9/FloorFloordropout_9/add*
T0*
_output_shapes
:
Q
dropout_9/divRealDiv	MaxPool_5	keep_prob*
T0*
_output_shapes
:
e
dropout_9/mulMuldropout_9/divdropout_9/Floor*&
_output_shapes
:@*
T0
p
Flatten_2/flatten/ShapeConst*%
valueB"         @   *
dtype0*
_output_shapes
:
o
%Flatten_2/flatten/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
q
'Flatten_2/flatten/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
q
'Flatten_2/flatten/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Ó
Flatten_2/flatten/strided_sliceStridedSliceFlatten_2/flatten/Shape%Flatten_2/flatten/strided_slice/stack'Flatten_2/flatten/strided_slice/stack_1'Flatten_2/flatten/strided_slice/stack_2*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
l
!Flatten_2/flatten/Reshape/shape/1Const*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
„
Flatten_2/flatten/Reshape/shapePackFlatten_2/flatten/strided_slice!Flatten_2/flatten/Reshape/shape/1*
T0*

axis *
N*
_output_shapes
:

Flatten_2/flatten/ReshapeReshapedropout_9/mulFlatten_2/flatten/Reshape/shape*
_output_shapes
:	 *
T0*
Tshape0

MatMul_6MatMulFlatten_2/flatten/ReshapeVariable_4/read*
T0*
transpose_a( *
_output_shapes

:x*
transpose_b( 
P
Add_6AddMatMul_6Variable_5/read*
T0*
_output_shapes

:x
?
Relu_10ReluAdd_6*
T0*
_output_shapes

:x
a
dropout_10/ShapeConst*
valueB"   x   *
dtype0*
_output_shapes
:
b
dropout_10/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
b
dropout_10/random_uniform/maxConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

'dropout_10/random_uniform/RandomUniformRandomUniformdropout_10/Shape*
dtype0*
seed2 *
_output_shapes

:x*

seed *
T0

dropout_10/random_uniform/subSubdropout_10/random_uniform/maxdropout_10/random_uniform/min*
_output_shapes
: *
T0

dropout_10/random_uniform/mulMul'dropout_10/random_uniform/RandomUniformdropout_10/random_uniform/sub*
T0*
_output_shapes

:x

dropout_10/random_uniformAdddropout_10/random_uniform/muldropout_10/random_uniform/min*
_output_shapes

:x*
T0
^
dropout_10/addAdd	keep_probdropout_10/random_uniform*
_output_shapes
:*
T0
L
dropout_10/FloorFloordropout_10/add*
_output_shapes
:*
T0
P
dropout_10/divRealDivRelu_10	keep_prob*
T0*
_output_shapes
:
`
dropout_10/mulMuldropout_10/divdropout_10/Floor*
T0*
_output_shapes

:x

MatMul_7MatMuldropout_10/mulVariable_6/read*
transpose_a( *
_output_shapes

:<*
transpose_b( *
T0
P
Add_7AddMatMul_7Variable_7/read*
_output_shapes

:<*
T0
?
Relu_11ReluAdd_7*
T0*
_output_shapes

:<
a
dropout_11/ShapeConst*
valueB"   <   *
dtype0*
_output_shapes
:
b
dropout_11/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *    
b
dropout_11/random_uniform/maxConst*
_output_shapes
: *
valueB
 *  ?*
dtype0

'dropout_11/random_uniform/RandomUniformRandomUniformdropout_11/Shape*
T0*
dtype0*
seed2 *
_output_shapes

:<*

seed 

dropout_11/random_uniform/subSubdropout_11/random_uniform/maxdropout_11/random_uniform/min*
_output_shapes
: *
T0

dropout_11/random_uniform/mulMul'dropout_11/random_uniform/RandomUniformdropout_11/random_uniform/sub*
_output_shapes

:<*
T0

dropout_11/random_uniformAdddropout_11/random_uniform/muldropout_11/random_uniform/min*
_output_shapes

:<*
T0
^
dropout_11/addAdd	keep_probdropout_11/random_uniform*
_output_shapes
:*
T0
L
dropout_11/FloorFloordropout_11/add*
T0*
_output_shapes
:
P
dropout_11/divRealDivRelu_11	keep_prob*
T0*
_output_shapes
:
`
dropout_11/mulMuldropout_11/divdropout_11/Floor*
T0*
_output_shapes

:<

MatMul_8MatMuldropout_11/mulVariable_8/read*
transpose_a( *
_output_shapes

:*
transpose_b( *
T0
P
Add_8AddMatMul_8Variable_9/read*
T0*
_output_shapes

:
H
model_outputIdentityAdd_8*
T0*
_output_shapes

:

)SparseSoftmaxCrossEntropyWithLogits/ShapeShapePlaceholder_1*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ō
GSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsAdd_2Placeholder_1*
T0*
Tlabels0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’
O
ConstConst*
valueB: *
dtype0*
_output_shapes
:

MeanMeanGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsConst*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 

+SparseSoftmaxCrossEntropyWithLogits_1/ShapeShapePlaceholder_3*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ö
ISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsAdd_5Placeholder_3*
Tlabels0*6
_output_shapes$
":’’’’’’’’’:’’’’’’’’’*
T0
Q
Const_1Const*
_output_shapes
:*
valueB: *
dtype0
 
Mean_1MeanISparseSoftmaxCrossEntropyWithLogits_1/SparseSoftmaxCrossEntropyWithLogitsConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
u
+SparseSoftmaxCrossEntropyWithLogits_2/ShapeConst*
dtype0*
_output_shapes
:*
valueB:
Ę
ISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsmodel_outputy_target*
T0*
Tlabels0*$
_output_shapes
::
Q
Const_2Const*
valueB: *
dtype0*
_output_shapes
:
 
Mean_2MeanISparseSoftmaxCrossEntropyWithLogits_2/SparseSoftmaxCrossEntropyWithLogitsConst_2*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
K
SoftmaxSoftmaxAdd_2*'
_output_shapes
:’’’’’’’’’*
T0
M
	Softmax_1SoftmaxAdd_5*
T0*'
_output_shapes
:’’’’’’’’’
L

predictionSoftmaxmodel_output*
T0*
_output_shapes

:
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
X
gradients/grad_ys_0Const*
_output_shapes
: *
valueB
 *  ?*
dtype0
o
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
_output_shapes
:*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
T0*
Tshape0
 
gradients/Mean_grad/ShapeShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
_output_shapes
:*
T0*
out_type0

gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:’’’’’’’’’
¢
gradients/Mean_grad/Shape_1ShapeGSparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
c
gradients/Mean_grad/ConstConst*
dtype0*
_output_shapes
:*
valueB: 

gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*
_output_shapes
: *

Tidx0*
	keep_dims( 
e
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
_
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 

gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
_output_shapes
: *
T0

gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
_output_shapes
: *
T0
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 

gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:’’’’’’’’’

gradients/zeros_like	ZerosLikeISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:’’’’’’’’’
­
fgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradientISparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*'
_output_shapes
:’’’’’’’’’*“
messageØ„Currently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()
°
egradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
’’’’’’’’’*
dtype0*
_output_shapes
: 
±
agradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsgradients/Mean_grad/truedivegradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:’’’’’’’’’*

Tdim0*
T0
Ž
Zgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMulagradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimsfgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*'
_output_shapes
:’’’’’’’’’*
T0
b
gradients/Add_2_grad/ShapeShapeMatMul_2*
T0*
out_type0*
_output_shapes
:
f
gradients/Add_2_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
ŗ
*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
ē
gradients/Add_2_grad/SumSumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul*gradients/Add_2_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*'
_output_shapes
:’’’’’’’’’*
T0*
Tshape0
ė
gradients/Add_2_grad/Sum_1SumZgradients/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mul,gradients/Add_2_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0
m
%gradients/Add_2_grad/tuple/group_depsNoOp^gradients/Add_2_grad/Reshape^gradients/Add_2_grad/Reshape_1
ā
-gradients/Add_2_grad/tuple/control_dependencyIdentitygradients/Add_2_grad/Reshape&^gradients/Add_2_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_2_grad/Reshape*'
_output_shapes
:’’’’’’’’’*
T0
Ū
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1*
_output_shapes
:
Ą
gradients/MatMul_2_grad/MatMulMatMul-gradients/Add_2_grad/tuple/control_dependencyVariable_8/read*
transpose_a( *'
_output_shapes
:’’’’’’’’’<*
transpose_b(*
T0
·
 gradients/MatMul_2_grad/MatMul_1MatMuldropout_3/mul-gradients/Add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes

:<*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
ģ
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul*'
_output_shapes
:’’’’’’’’’<
é
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
_output_shapes

:<
x
"gradients/dropout_3/mul_grad/ShapeShapedropout_3/div*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
|
$gradients/dropout_3/mul_grad/Shape_1Shapedropout_3/Floor*
out_type0*#
_output_shapes
:’’’’’’’’’*
T0
Ņ
2gradients/dropout_3/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_3/mul_grad/Shape$gradients/dropout_3/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

 gradients/dropout_3/mul_grad/MulMul0gradients/MatMul_2_grad/tuple/control_dependencydropout_3/Floor*
T0*
_output_shapes
:
½
 gradients/dropout_3/mul_grad/SumSum gradients/dropout_3/mul_grad/Mul2gradients/dropout_3/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¦
$gradients/dropout_3/mul_grad/ReshapeReshape gradients/dropout_3/mul_grad/Sum"gradients/dropout_3/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:

"gradients/dropout_3/mul_grad/Mul_1Muldropout_3/div0gradients/MatMul_2_grad/tuple/control_dependency*
_output_shapes
:*
T0
Ć
"gradients/dropout_3/mul_grad/Sum_1Sum"gradients/dropout_3/mul_grad/Mul_14gradients/dropout_3/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¬
&gradients/dropout_3/mul_grad/Reshape_1Reshape"gradients/dropout_3/mul_grad/Sum_1$gradients/dropout_3/mul_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

-gradients/dropout_3/mul_grad/tuple/group_depsNoOp%^gradients/dropout_3/mul_grad/Reshape'^gradients/dropout_3/mul_grad/Reshape_1
ó
5gradients/dropout_3/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_3/mul_grad/Reshape.^gradients/dropout_3/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*7
_class-
+)loc:@gradients/dropout_3/mul_grad/Reshape
ł
7gradients/dropout_3/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_3/mul_grad/Reshape_1.^gradients/dropout_3/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/dropout_3/mul_grad/Reshape_1
h
"gradients/dropout_3/div_grad/ShapeShapeRelu_3*
_output_shapes
:*
T0*
out_type0
v
$gradients/dropout_3/div_grad/Shape_1Shape	keep_prob*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ņ
2gradients/dropout_3/div_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_3/div_grad/Shape$gradients/dropout_3/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

$gradients/dropout_3/div_grad/RealDivRealDiv5gradients/dropout_3/mul_grad/tuple/control_dependency	keep_prob*
T0*
_output_shapes
:
Į
 gradients/dropout_3/div_grad/SumSum$gradients/dropout_3/div_grad/RealDiv2gradients/dropout_3/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
µ
$gradients/dropout_3/div_grad/ReshapeReshape gradients/dropout_3/div_grad/Sum"gradients/dropout_3/div_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’<
a
 gradients/dropout_3/div_grad/NegNegRelu_3*
T0*'
_output_shapes
:’’’’’’’’’<

&gradients/dropout_3/div_grad/RealDiv_1RealDiv gradients/dropout_3/div_grad/Neg	keep_prob*
T0*
_output_shapes
:

&gradients/dropout_3/div_grad/RealDiv_2RealDiv&gradients/dropout_3/div_grad/RealDiv_1	keep_prob*
_output_shapes
:*
T0
©
 gradients/dropout_3/div_grad/mulMul5gradients/dropout_3/mul_grad/tuple/control_dependency&gradients/dropout_3/div_grad/RealDiv_2*
_output_shapes
:*
T0
Į
"gradients/dropout_3/div_grad/Sum_1Sum gradients/dropout_3/div_grad/mul4gradients/dropout_3/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¬
&gradients/dropout_3/div_grad/Reshape_1Reshape"gradients/dropout_3/div_grad/Sum_1$gradients/dropout_3/div_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

-gradients/dropout_3/div_grad/tuple/group_depsNoOp%^gradients/dropout_3/div_grad/Reshape'^gradients/dropout_3/div_grad/Reshape_1

5gradients/dropout_3/div_grad/tuple/control_dependencyIdentity$gradients/dropout_3/div_grad/Reshape.^gradients/dropout_3/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_3/div_grad/Reshape*'
_output_shapes
:’’’’’’’’’<
ł
7gradients/dropout_3/div_grad/tuple/control_dependency_1Identity&gradients/dropout_3/div_grad/Reshape_1.^gradients/dropout_3/div_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_3/div_grad/Reshape_1*
_output_shapes
:

gradients/Relu_3_grad/ReluGradReluGrad5gradients/dropout_3/div_grad/tuple/control_dependencyRelu_3*
T0*'
_output_shapes
:’’’’’’’’’<
b
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0*
_output_shapes
:
f
gradients/Add_1_grad/Shape_1Const*
_output_shapes
:*
valueB:<*
dtype0
ŗ
*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
«
gradients/Add_1_grad/SumSumgradients/Relu_3_grad/ReluGrad*gradients/Add_1_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*'
_output_shapes
:’’’’’’’’’<*
T0*
Tshape0
Æ
gradients/Add_1_grad/Sum_1Sumgradients/Relu_3_grad/ReluGrad,gradients/Add_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:<
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
ā
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape*'
_output_shapes
:’’’’’’’’’<
Ū
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1*
_output_shapes
:<*
T0
Ą
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyVariable_6/read*
T0*
transpose_a( *'
_output_shapes
:’’’’’’’’’x*
transpose_b(
·
 gradients/MatMul_1_grad/MatMul_1MatMuldropout_2/mul-gradients/Add_1_grad/tuple/control_dependency*
transpose_a(*
_output_shapes

:x<*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
ģ
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul*'
_output_shapes
:’’’’’’’’’x
é
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1*
_output_shapes

:x<
x
"gradients/dropout_2/mul_grad/ShapeShapedropout_2/div*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
|
$gradients/dropout_2/mul_grad/Shape_1Shapedropout_2/Floor*
out_type0*#
_output_shapes
:’’’’’’’’’*
T0
Ņ
2gradients/dropout_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_2/mul_grad/Shape$gradients/dropout_2/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

 gradients/dropout_2/mul_grad/MulMul0gradients/MatMul_1_grad/tuple/control_dependencydropout_2/Floor*
T0*
_output_shapes
:
½
 gradients/dropout_2/mul_grad/SumSum gradients/dropout_2/mul_grad/Mul2gradients/dropout_2/mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¦
$gradients/dropout_2/mul_grad/ReshapeReshape gradients/dropout_2/mul_grad/Sum"gradients/dropout_2/mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0

"gradients/dropout_2/mul_grad/Mul_1Muldropout_2/div0gradients/MatMul_1_grad/tuple/control_dependency*
_output_shapes
:*
T0
Ć
"gradients/dropout_2/mul_grad/Sum_1Sum"gradients/dropout_2/mul_grad/Mul_14gradients/dropout_2/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¬
&gradients/dropout_2/mul_grad/Reshape_1Reshape"gradients/dropout_2/mul_grad/Sum_1$gradients/dropout_2/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

-gradients/dropout_2/mul_grad/tuple/group_depsNoOp%^gradients/dropout_2/mul_grad/Reshape'^gradients/dropout_2/mul_grad/Reshape_1
ó
5gradients/dropout_2/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_2/mul_grad/Reshape.^gradients/dropout_2/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_2/mul_grad/Reshape*
_output_shapes
:
ł
7gradients/dropout_2/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_2/mul_grad/Reshape_1.^gradients/dropout_2/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/dropout_2/mul_grad/Reshape_1
h
"gradients/dropout_2/div_grad/ShapeShapeRelu_2*
T0*
out_type0*
_output_shapes
:
v
$gradients/dropout_2/div_grad/Shape_1Shape	keep_prob*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ņ
2gradients/dropout_2/div_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_2/div_grad/Shape$gradients/dropout_2/div_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

$gradients/dropout_2/div_grad/RealDivRealDiv5gradients/dropout_2/mul_grad/tuple/control_dependency	keep_prob*
_output_shapes
:*
T0
Į
 gradients/dropout_2/div_grad/SumSum$gradients/dropout_2/div_grad/RealDiv2gradients/dropout_2/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
µ
$gradients/dropout_2/div_grad/ReshapeReshape gradients/dropout_2/div_grad/Sum"gradients/dropout_2/div_grad/Shape*'
_output_shapes
:’’’’’’’’’x*
T0*
Tshape0
a
 gradients/dropout_2/div_grad/NegNegRelu_2*'
_output_shapes
:’’’’’’’’’x*
T0

&gradients/dropout_2/div_grad/RealDiv_1RealDiv gradients/dropout_2/div_grad/Neg	keep_prob*
_output_shapes
:*
T0

&gradients/dropout_2/div_grad/RealDiv_2RealDiv&gradients/dropout_2/div_grad/RealDiv_1	keep_prob*
_output_shapes
:*
T0
©
 gradients/dropout_2/div_grad/mulMul5gradients/dropout_2/mul_grad/tuple/control_dependency&gradients/dropout_2/div_grad/RealDiv_2*
_output_shapes
:*
T0
Į
"gradients/dropout_2/div_grad/Sum_1Sum gradients/dropout_2/div_grad/mul4gradients/dropout_2/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¬
&gradients/dropout_2/div_grad/Reshape_1Reshape"gradients/dropout_2/div_grad/Sum_1$gradients/dropout_2/div_grad/Shape_1*
Tshape0*
_output_shapes
:*
T0

-gradients/dropout_2/div_grad/tuple/group_depsNoOp%^gradients/dropout_2/div_grad/Reshape'^gradients/dropout_2/div_grad/Reshape_1

5gradients/dropout_2/div_grad/tuple/control_dependencyIdentity$gradients/dropout_2/div_grad/Reshape.^gradients/dropout_2/div_grad/tuple/group_deps*'
_output_shapes
:’’’’’’’’’x*
T0*7
_class-
+)loc:@gradients/dropout_2/div_grad/Reshape
ł
7gradients/dropout_2/div_grad/tuple/control_dependency_1Identity&gradients/dropout_2/div_grad/Reshape_1.^gradients/dropout_2/div_grad/tuple/group_deps*9
_class/
-+loc:@gradients/dropout_2/div_grad/Reshape_1*
_output_shapes
:*
T0

gradients/Relu_2_grad/ReluGradReluGrad5gradients/dropout_2/div_grad/tuple/control_dependencyRelu_2*'
_output_shapes
:’’’’’’’’’x*
T0
^
gradients/Add_grad/ShapeShapeMatMul*
_output_shapes
:*
T0*
out_type0
d
gradients/Add_grad/Shape_1Const*
valueB:x*
dtype0*
_output_shapes
:
“
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0
§
gradients/Add_grad/SumSumgradients/Relu_2_grad/ReluGrad(gradients/Add_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 

gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:’’’’’’’’’x
«
gradients/Add_grad/Sum_1Sumgradients/Relu_2_grad/ReluGrad*gradients/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0

gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:x
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
Ś
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*'
_output_shapes
:’’’’’’’’’x*
T0
Ó
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
_output_shapes
:x
½
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyVariable_4/read*
transpose_b(*
T0*
transpose_a( *(
_output_shapes
:’’’’’’’’’ 
¾
gradients/MatMul_grad/MatMul_1MatMulFlatten/flatten/Reshape+gradients/Add_grad/tuple/control_dependency*
T0*
transpose_a(*
_output_shapes
:	 x*
transpose_b( 
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
å
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*(
_output_shapes
:’’’’’’’’’ 
ā
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
_output_shapes
:	 x*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
y
,gradients/Flatten/flatten/Reshape_grad/ShapeShapedropout_1/mul*
T0*
out_type0*
_output_shapes
:
ß
.gradients/Flatten/flatten/Reshape_grad/ReshapeReshape.gradients/MatMul_grad/tuple/control_dependency,gradients/Flatten/flatten/Reshape_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’@
x
"gradients/dropout_1/mul_grad/ShapeShapedropout_1/div*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
|
$gradients/dropout_1/mul_grad/Shape_1Shapedropout_1/Floor*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ņ
2gradients/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/mul_grad/Shape$gradients/dropout_1/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

 gradients/dropout_1/mul_grad/MulMul.gradients/Flatten/flatten/Reshape_grad/Reshapedropout_1/Floor*
T0*
_output_shapes
:
½
 gradients/dropout_1/mul_grad/SumSum gradients/dropout_1/mul_grad/Mul2gradients/dropout_1/mul_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0*
_output_shapes
:
¦
$gradients/dropout_1/mul_grad/ReshapeReshape gradients/dropout_1/mul_grad/Sum"gradients/dropout_1/mul_grad/Shape*
_output_shapes
:*
T0*
Tshape0

"gradients/dropout_1/mul_grad/Mul_1Muldropout_1/div.gradients/Flatten/flatten/Reshape_grad/Reshape*
_output_shapes
:*
T0
Ć
"gradients/dropout_1/mul_grad/Sum_1Sum"gradients/dropout_1/mul_grad/Mul_14gradients/dropout_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
¬
&gradients/dropout_1/mul_grad/Reshape_1Reshape"gradients/dropout_1/mul_grad/Sum_1$gradients/dropout_1/mul_grad/Shape_1*
_output_shapes
:*
T0*
Tshape0

-gradients/dropout_1/mul_grad/tuple/group_depsNoOp%^gradients/dropout_1/mul_grad/Reshape'^gradients/dropout_1/mul_grad/Reshape_1
ó
5gradients/dropout_1/mul_grad/tuple/control_dependencyIdentity$gradients/dropout_1/mul_grad/Reshape.^gradients/dropout_1/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/mul_grad/Reshape*
_output_shapes
:
ł
7gradients/dropout_1/mul_grad/tuple/control_dependency_1Identity&gradients/dropout_1/mul_grad/Reshape_1.^gradients/dropout_1/mul_grad/tuple/group_deps*
_output_shapes
:*
T0*9
_class/
-+loc:@gradients/dropout_1/mul_grad/Reshape_1
k
"gradients/dropout_1/div_grad/ShapeShape	MaxPool_1*
T0*
out_type0*
_output_shapes
:
v
$gradients/dropout_1/div_grad/Shape_1Shape	keep_prob*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ņ
2gradients/dropout_1/div_grad/BroadcastGradientArgsBroadcastGradientArgs"gradients/dropout_1/div_grad/Shape$gradients/dropout_1/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

$gradients/dropout_1/div_grad/RealDivRealDiv5gradients/dropout_1/mul_grad/tuple/control_dependency	keep_prob*
T0*
_output_shapes
:
Į
 gradients/dropout_1/div_grad/SumSum$gradients/dropout_1/div_grad/RealDiv2gradients/dropout_1/div_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
½
$gradients/dropout_1/div_grad/ReshapeReshape gradients/dropout_1/div_grad/Sum"gradients/dropout_1/div_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’@
l
 gradients/dropout_1/div_grad/NegNeg	MaxPool_1*/
_output_shapes
:’’’’’’’’’@*
T0

&gradients/dropout_1/div_grad/RealDiv_1RealDiv gradients/dropout_1/div_grad/Neg	keep_prob*
_output_shapes
:*
T0

&gradients/dropout_1/div_grad/RealDiv_2RealDiv&gradients/dropout_1/div_grad/RealDiv_1	keep_prob*
_output_shapes
:*
T0
©
 gradients/dropout_1/div_grad/mulMul5gradients/dropout_1/mul_grad/tuple/control_dependency&gradients/dropout_1/div_grad/RealDiv_2*
_output_shapes
:*
T0
Į
"gradients/dropout_1/div_grad/Sum_1Sum gradients/dropout_1/div_grad/mul4gradients/dropout_1/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¬
&gradients/dropout_1/div_grad/Reshape_1Reshape"gradients/dropout_1/div_grad/Sum_1$gradients/dropout_1/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

-gradients/dropout_1/div_grad/tuple/group_depsNoOp%^gradients/dropout_1/div_grad/Reshape'^gradients/dropout_1/div_grad/Reshape_1

5gradients/dropout_1/div_grad/tuple/control_dependencyIdentity$gradients/dropout_1/div_grad/Reshape.^gradients/dropout_1/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout_1/div_grad/Reshape*/
_output_shapes
:’’’’’’’’’@
ł
7gradients/dropout_1/div_grad/tuple/control_dependency_1Identity&gradients/dropout_1/div_grad/Reshape_1.^gradients/dropout_1/div_grad/tuple/group_deps*
T0*9
_class/
-+loc:@gradients/dropout_1/div_grad/Reshape_1*
_output_shapes
:

$gradients/MaxPool_1_grad/MaxPoolGradMaxPoolGradRelu_1	MaxPool_15gradients/dropout_1/div_grad/tuple/control_dependency*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’@*
T0*
data_formatNHWC*
strides


gradients/Relu_1_grad/ReluGradReluGrad$gradients/MaxPool_1_grad/MaxPoolGradRelu_1*/
_output_shapes
:’’’’’’’’’@*
T0

$gradients/BiasAdd_1_grad/BiasAddGradBiasAddGradgradients/Relu_1_grad/ReluGrad*
_output_shapes
:@*
T0*
data_formatNHWC
y
)gradients/BiasAdd_1_grad/tuple/group_depsNoOp%^gradients/BiasAdd_1_grad/BiasAddGrad^gradients/Relu_1_grad/ReluGrad
ö
1gradients/BiasAdd_1_grad/tuple/control_dependencyIdentitygradients/Relu_1_grad/ReluGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Relu_1_grad/ReluGrad*/
_output_shapes
:’’’’’’’’’@
ļ
3gradients/BiasAdd_1_grad/tuple/control_dependency_1Identity$gradients/BiasAdd_1_grad/BiasAddGrad*^gradients/BiasAdd_1_grad/tuple/group_deps*
_output_shapes
:@*
T0*7
_class-
+)loc:@gradients/BiasAdd_1_grad/BiasAddGrad

gradients/Conv2D_1_grad/ShapeNShapeNdropout/mulVariable_2/read* 
_output_shapes
::*
T0*
out_type0*
N
Ī
+gradients/Conv2D_1_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_1_grad/ShapeNVariable_2/read1gradients/BiasAdd_1_grad/tuple/control_dependency*/
_output_shapes
:’’’’’’’’’ *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME
Å
,gradients/Conv2D_1_grad/Conv2DBackpropFilterConv2DBackpropFilterdropout/mul gradients/Conv2D_1_grad/ShapeN:11gradients/BiasAdd_1_grad/tuple/control_dependency*
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*&
_output_shapes
: @

(gradients/Conv2D_1_grad/tuple/group_depsNoOp-^gradients/Conv2D_1_grad/Conv2DBackpropFilter,^gradients/Conv2D_1_grad/Conv2DBackpropInput

0gradients/Conv2D_1_grad/tuple/control_dependencyIdentity+gradients/Conv2D_1_grad/Conv2DBackpropInput)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*>
_class4
20loc:@gradients/Conv2D_1_grad/Conv2DBackpropInput*/
_output_shapes
:’’’’’’’’’ 

2gradients/Conv2D_1_grad/tuple/control_dependency_1Identity,gradients/Conv2D_1_grad/Conv2DBackpropFilter)^gradients/Conv2D_1_grad/tuple/group_deps*
T0*?
_class5
31loc:@gradients/Conv2D_1_grad/Conv2DBackpropFilter*&
_output_shapes
: @
t
 gradients/dropout/mul_grad/ShapeShapedropout/div*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
x
"gradients/dropout/mul_grad/Shape_1Shapedropout/Floor*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ģ
0gradients/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/mul_grad/Shape"gradients/dropout/mul_grad/Shape_1*
T0*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’

gradients/dropout/mul_grad/MulMul0gradients/Conv2D_1_grad/tuple/control_dependencydropout/Floor*
_output_shapes
:*
T0
·
gradients/dropout/mul_grad/SumSumgradients/dropout/mul_grad/Mul0gradients/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
 
"gradients/dropout/mul_grad/ReshapeReshapegradients/dropout/mul_grad/Sum gradients/dropout/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:

 gradients/dropout/mul_grad/Mul_1Muldropout/div0gradients/Conv2D_1_grad/tuple/control_dependency*
T0*
_output_shapes
:
½
 gradients/dropout/mul_grad/Sum_1Sum gradients/dropout/mul_grad/Mul_12gradients/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¦
$gradients/dropout/mul_grad/Reshape_1Reshape gradients/dropout/mul_grad/Sum_1"gradients/dropout/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

+gradients/dropout/mul_grad/tuple/group_depsNoOp#^gradients/dropout/mul_grad/Reshape%^gradients/dropout/mul_grad/Reshape_1
ė
3gradients/dropout/mul_grad/tuple/control_dependencyIdentity"gradients/dropout/mul_grad/Reshape,^gradients/dropout/mul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/mul_grad/Reshape*
_output_shapes
:
ń
5gradients/dropout/mul_grad/tuple/control_dependency_1Identity$gradients/dropout/mul_grad/Reshape_1,^gradients/dropout/mul_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/mul_grad/Reshape_1*
_output_shapes
:
g
 gradients/dropout/div_grad/ShapeShapeMaxPool*
T0*
out_type0*
_output_shapes
:
t
"gradients/dropout/div_grad/Shape_1Shape	keep_prob*
T0*
out_type0*#
_output_shapes
:’’’’’’’’’
Ģ
0gradients/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs gradients/dropout/div_grad/Shape"gradients/dropout/div_grad/Shape_1*2
_output_shapes 
:’’’’’’’’’:’’’’’’’’’*
T0

"gradients/dropout/div_grad/RealDivRealDiv3gradients/dropout/mul_grad/tuple/control_dependency	keep_prob*
T0*
_output_shapes
:
»
gradients/dropout/div_grad/SumSum"gradients/dropout/div_grad/RealDiv0gradients/dropout/div_grad/BroadcastGradientArgs*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
·
"gradients/dropout/div_grad/ReshapeReshapegradients/dropout/div_grad/Sum gradients/dropout/div_grad/Shape*
T0*
Tshape0*/
_output_shapes
:’’’’’’’’’ 
h
gradients/dropout/div_grad/NegNegMaxPool*
T0*/
_output_shapes
:’’’’’’’’’ 
}
$gradients/dropout/div_grad/RealDiv_1RealDivgradients/dropout/div_grad/Neg	keep_prob*
T0*
_output_shapes
:

$gradients/dropout/div_grad/RealDiv_2RealDiv$gradients/dropout/div_grad/RealDiv_1	keep_prob*
_output_shapes
:*
T0
£
gradients/dropout/div_grad/mulMul3gradients/dropout/mul_grad/tuple/control_dependency$gradients/dropout/div_grad/RealDiv_2*
_output_shapes
:*
T0
»
 gradients/dropout/div_grad/Sum_1Sumgradients/dropout/div_grad/mul2gradients/dropout/div_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:*

Tidx0*
	keep_dims( 
¦
$gradients/dropout/div_grad/Reshape_1Reshape gradients/dropout/div_grad/Sum_1"gradients/dropout/div_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:

+gradients/dropout/div_grad/tuple/group_depsNoOp#^gradients/dropout/div_grad/Reshape%^gradients/dropout/div_grad/Reshape_1

3gradients/dropout/div_grad/tuple/control_dependencyIdentity"gradients/dropout/div_grad/Reshape,^gradients/dropout/div_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/dropout/div_grad/Reshape*/
_output_shapes
:’’’’’’’’’ 
ń
5gradients/dropout/div_grad/tuple/control_dependency_1Identity$gradients/dropout/div_grad/Reshape_1,^gradients/dropout/div_grad/tuple/group_deps*
T0*7
_class-
+)loc:@gradients/dropout/div_grad/Reshape_1*
_output_shapes
:

"gradients/MaxPool_grad/MaxPoolGradMaxPoolGradReluMaxPool3gradients/dropout/div_grad/tuple/control_dependency*
data_formatNHWC*
strides
*
ksize
*
paddingSAME*/
_output_shapes
:’’’’’’’’’   *
T0

gradients/Relu_grad/ReluGradReluGrad"gradients/MaxPool_grad/MaxPoolGradRelu*/
_output_shapes
:’’’’’’’’’   *
T0

"gradients/BiasAdd_grad/BiasAddGradBiasAddGradgradients/Relu_grad/ReluGrad*
T0*
data_formatNHWC*
_output_shapes
: 
s
'gradients/BiasAdd_grad/tuple/group_depsNoOp#^gradients/BiasAdd_grad/BiasAddGrad^gradients/Relu_grad/ReluGrad
ī
/gradients/BiasAdd_grad/tuple/control_dependencyIdentitygradients/Relu_grad/ReluGrad(^gradients/BiasAdd_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Relu_grad/ReluGrad*/
_output_shapes
:’’’’’’’’’   *
T0
ē
1gradients/BiasAdd_grad/tuple/control_dependency_1Identity"gradients/BiasAdd_grad/BiasAddGrad(^gradients/BiasAdd_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/BiasAdd_grad/BiasAddGrad*
_output_shapes
: 

gradients/Conv2D_grad/ShapeNShapeNPlaceholderVariable/read*
T0*
out_type0*
N* 
_output_shapes
::
Ę
)gradients/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInputgradients/Conv2D_grad/ShapeNVariable/read/gradients/BiasAdd_grad/tuple/control_dependency*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME*/
_output_shapes
:’’’’’’’’’  *
	dilations
*
T0
æ
*gradients/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterPlaceholdergradients/Conv2D_grad/ShapeN:1/gradients/BiasAdd_grad/tuple/control_dependency*&
_output_shapes
: *
	dilations
*
T0*
strides
*
data_formatNHWC*
use_cudnn_on_gpu(*
paddingSAME

&gradients/Conv2D_grad/tuple/group_depsNoOp+^gradients/Conv2D_grad/Conv2DBackpropFilter*^gradients/Conv2D_grad/Conv2DBackpropInput

.gradients/Conv2D_grad/tuple/control_dependencyIdentity)gradients/Conv2D_grad/Conv2DBackpropInput'^gradients/Conv2D_grad/tuple/group_deps*/
_output_shapes
:’’’’’’’’’  *
T0*<
_class2
0.loc:@gradients/Conv2D_grad/Conv2DBackpropInput

0gradients/Conv2D_grad/tuple/control_dependency_1Identity*gradients/Conv2D_grad/Conv2DBackpropFilter'^gradients/Conv2D_grad/tuple/group_deps*&
_output_shapes
: *
T0*=
_class3
1/loc:@gradients/Conv2D_grad/Conv2DBackpropFilter
{
beta1_power/initial_valueConst*
valueB
 *fff?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta1_power
VariableV2*
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
«
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
g
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
{
beta2_power/initial_valueConst*
valueB
 *w¾?*
_class
loc:@Variable*
dtype0*
_output_shapes
: 

beta2_power
VariableV2*
shared_name *
_class
loc:@Variable*
	container *
shape: *
dtype0*
_output_shapes
: 
«
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
g
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@Variable*
_output_shapes
: 
”
Variable/Adam/Initializer/zerosConst*&
_output_shapes
: *%
valueB *    *
_class
loc:@Variable*
dtype0
®
Variable/Adam
VariableV2*
dtype0*&
_output_shapes
: *
shared_name *
_class
loc:@Variable*
	container *
shape: 
Å
Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable
{
Variable/Adam/readIdentityVariable/Adam*
_class
loc:@Variable*&
_output_shapes
: *
T0
£
!Variable/Adam_1/Initializer/zerosConst*%
valueB *    *
_class
loc:@Variable*
dtype0*&
_output_shapes
: 
°
Variable/Adam_1
VariableV2*
	container *
shape: *
dtype0*&
_output_shapes
: *
shared_name *
_class
loc:@Variable
Ė
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
validate_shape(*&
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable

Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable*&
_output_shapes
: 

!Variable_1/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB *    *
_class
loc:@Variable_1

Variable_1/Adam
VariableV2*
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Į
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
u
Variable_1/Adam/readIdentityVariable_1/Adam*
_output_shapes
: *
T0*
_class
loc:@Variable_1

#Variable_1/Adam_1/Initializer/zerosConst*
valueB *    *
_class
loc:@Variable_1*
dtype0*
_output_shapes
: 

Variable_1/Adam_1
VariableV2*
_class
loc:@Variable_1*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name 
Ē
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
y
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1*
_output_shapes
: 
©
1Variable_2/Adam/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

'Variable_2/Adam/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_2
ē
!Variable_2/Adam/Initializer/zerosFill1Variable_2/Adam/Initializer/zeros/shape_as_tensor'Variable_2/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@Variable_2*&
_output_shapes
: @*
T0
²
Variable_2/Adam
VariableV2*
dtype0*&
_output_shapes
: @*
shared_name *
_class
loc:@Variable_2*
	container *
shape: @
Ķ
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @
«
3Variable_2/Adam_1/Initializer/zeros/shape_as_tensorConst*%
valueB"          @   *
_class
loc:@Variable_2*
dtype0*
_output_shapes
:

)Variable_2/Adam_1/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
_class
loc:@Variable_2*
dtype0
ķ
#Variable_2/Adam_1/Initializer/zerosFill3Variable_2/Adam_1/Initializer/zeros/shape_as_tensor)Variable_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_2*&
_output_shapes
: @
“
Variable_2/Adam_1
VariableV2*
	container *
shape: @*
dtype0*&
_output_shapes
: @*
shared_name *
_class
loc:@Variable_2
Ó
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @

Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2*&
_output_shapes
: @

!Variable_3/Adam/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:@

Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@*
dtype0*
_output_shapes
:@
Į
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
u
Variable_3/Adam/readIdentityVariable_3/Adam*
_output_shapes
:@*
T0*
_class
loc:@Variable_3

#Variable_3/Adam_1/Initializer/zerosConst*
valueB@*    *
_class
loc:@Variable_3*
dtype0*
_output_shapes
:@

Variable_3/Adam_1
VariableV2*
dtype0*
_output_shapes
:@*
shared_name *
_class
loc:@Variable_3*
	container *
shape:@
Ē
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
y
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
_class
loc:@Variable_3*
_output_shapes
:@*
T0
”
1Variable_4/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   x   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

'Variable_4/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_4*
dtype0*
_output_shapes
: 
ą
!Variable_4/Adam/Initializer/zerosFill1Variable_4/Adam/Initializer/zeros/shape_as_tensor'Variable_4/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes
:	 x
¤
Variable_4/Adam
VariableV2*
shared_name *
_class
loc:@Variable_4*
	container *
shape:	 x*
dtype0*
_output_shapes
:	 x
Ę
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x*
use_locking(
z
Variable_4/Adam/readIdentityVariable_4/Adam*
_output_shapes
:	 x*
T0*
_class
loc:@Variable_4
£
3Variable_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   x   *
_class
loc:@Variable_4*
dtype0*
_output_shapes
:

)Variable_4/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_4*
dtype0*
_output_shapes
: 
ę
#Variable_4/Adam_1/Initializer/zerosFill3Variable_4/Adam_1/Initializer/zeros/shape_as_tensor)Variable_4/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_4*
_output_shapes
:	 x
¦
Variable_4/Adam_1
VariableV2*
dtype0*
_output_shapes
:	 x*
shared_name *
_class
loc:@Variable_4*
	container *
shape:	 x
Ģ
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x*
use_locking(
~
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4*
_output_shapes
:	 x

!Variable_5/Adam/Initializer/zerosConst*
valueBx*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:x

Variable_5/Adam
VariableV2*
_output_shapes
:x*
shared_name *
_class
loc:@Variable_5*
	container *
shape:x*
dtype0
Į
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
u
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5*
_output_shapes
:x

#Variable_5/Adam_1/Initializer/zerosConst*
valueBx*    *
_class
loc:@Variable_5*
dtype0*
_output_shapes
:x

Variable_5/Adam_1
VariableV2*
	container *
shape:x*
dtype0*
_output_shapes
:x*
shared_name *
_class
loc:@Variable_5
Ē
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
y
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5*
_output_shapes
:x
”
1Variable_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"x   <   *
_class
loc:@Variable_6*
dtype0*
_output_shapes
:

'Variable_6/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
ß
!Variable_6/Adam/Initializer/zerosFill1Variable_6/Adam/Initializer/zeros/shape_as_tensor'Variable_6/Adam/Initializer/zeros/Const*
_output_shapes

:x<*
T0*

index_type0*
_class
loc:@Variable_6
¢
Variable_6/Adam
VariableV2*
dtype0*
_output_shapes

:x<*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:x<
Å
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:x<*
use_locking(*
T0*
_class
loc:@Variable_6
y
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6*
_output_shapes

:x<
£
3Variable_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB"x   <   *
_class
loc:@Variable_6

)Variable_6/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_6*
dtype0*
_output_shapes
: 
å
#Variable_6/Adam_1/Initializer/zerosFill3Variable_6/Adam_1/Initializer/zeros/shape_as_tensor)Variable_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_6*
_output_shapes

:x<
¤
Variable_6/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_6*
	container *
shape
:x<*
dtype0*
_output_shapes

:x<
Ė
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<
}
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_class
loc:@Variable_6*
_output_shapes

:x<

!Variable_7/Adam/Initializer/zerosConst*
valueB<*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:<

Variable_7/Adam
VariableV2*
	container *
shape:<*
dtype0*
_output_shapes
:<*
shared_name *
_class
loc:@Variable_7
Į
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
u
Variable_7/Adam/readIdentityVariable_7/Adam*
T0*
_class
loc:@Variable_7*
_output_shapes
:<

#Variable_7/Adam_1/Initializer/zerosConst*
valueB<*    *
_class
loc:@Variable_7*
dtype0*
_output_shapes
:<

Variable_7/Adam_1
VariableV2*
dtype0*
_output_shapes
:<*
shared_name *
_class
loc:@Variable_7*
	container *
shape:<
Ē
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
y
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
_output_shapes
:<*
T0*
_class
loc:@Variable_7

!Variable_8/Adam/Initializer/zerosConst*
valueB<*    *
_class
loc:@Variable_8*
dtype0*
_output_shapes

:<
¢
Variable_8/Adam
VariableV2*
dtype0*
_output_shapes

:<*
shared_name *
_class
loc:@Variable_8*
	container *
shape
:<
Å
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
validate_shape(*
_output_shapes

:<*
use_locking(*
T0*
_class
loc:@Variable_8
y
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_class
loc:@Variable_8*
_output_shapes

:<

#Variable_8/Adam_1/Initializer/zerosConst*
_output_shapes

:<*
valueB<*    *
_class
loc:@Variable_8*
dtype0
¤
Variable_8/Adam_1
VariableV2*
dtype0*
_output_shapes

:<*
shared_name *
_class
loc:@Variable_8*
	container *
shape
:<
Ė
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<
}
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
T0*
_class
loc:@Variable_8*
_output_shapes

:<

!Variable_9/Adam/Initializer/zerosConst*
dtype0*
_output_shapes
:*
valueB*    *
_class
loc:@Variable_9

Variable_9/Adam
VariableV2*
shared_name *
_class
loc:@Variable_9*
	container *
shape:*
dtype0*
_output_shapes
:
Į
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
u
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_class
loc:@Variable_9*
_output_shapes
:

#Variable_9/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_9*
dtype0*
_output_shapes
:

Variable_9/Adam_1
VariableV2*
_output_shapes
:*
shared_name *
_class
loc:@Variable_9*
	container *
shape:*
dtype0
Ē
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:
y
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
T0*
_class
loc:@Variable_9*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o:*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
dtype0*
_output_shapes
: *
valueB
 *fff?
O

Adam/beta2Const*
valueB
 *w¾?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
dtype0*
_output_shapes
: *
valueB
 *wĢ+2
Ś
Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Conv2D_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( *&
_output_shapes
: 
Ł
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/BiasAdd_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_1*
use_nesterov( *
_output_shapes
: 
ę
 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/Conv2D_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( *&
_output_shapes
: @
Ū
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/BiasAdd_1_grad/tuple/control_dependency_1*
_output_shapes
:@*
use_locking( *
T0*
_class
loc:@Variable_3*
use_nesterov( 
Ż
 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_4*
use_nesterov( *
_output_shapes
:	 x*
use_locking( 
Õ
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon-gradients/Add_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_5*
use_nesterov( *
_output_shapes
:x
Ž
 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_6*
use_nesterov( *
_output_shapes

:x<
×
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_7*
use_nesterov( *
_output_shapes
:<
Ž
 Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
_output_shapes

:<*
use_locking( *
T0*
_class
loc:@Variable_8*
use_nesterov( 
×
 Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_9*
use_nesterov( *
_output_shapes
:
Ē
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/AssignAssignbeta1_powerAdam/mul*
validate_shape(*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@Variable
É

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam*
T0*
_class
loc:@Variable*
_output_shapes
: 

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
use_locking( *
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 

AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam

initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign
P

save/ConstConst*
dtype0*
_output_shapes
: *
valueB Bmodel
Ö
save/SaveV2/tensor_namesConst*
_output_shapes
: *
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0
£
save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
ż
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
Ł
save/RestoreV2/tensor_namesConst*
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
: 
¦
save/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
®
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*.
dtypes$
"2 *
_output_shapes
::::::::::::::::::::::::::::::::
¦
save/AssignAssignVariablesave/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
Æ
save/Assign_1AssignVariable/Adamsave/RestoreV2:1*&
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
±
save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*&
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
¢
save/Assign_3Assign
Variable_1save/RestoreV2:3*
validate_shape(*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable_1
§
save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
©
save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
_output_shapes
: *
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
®
save/Assign_6Assign
Variable_2save/RestoreV2:6*
validate_shape(*&
_output_shapes
: @*
use_locking(*
T0*
_class
loc:@Variable_2
³
save/Assign_7AssignVariable_2/Adamsave/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
µ
save/Assign_8AssignVariable_2/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
¢
save/Assign_9Assign
Variable_3save/RestoreV2:9*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0*
_class
loc:@Variable_3
©
save/Assign_10AssignVariable_3/Adamsave/RestoreV2:10*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@*
use_locking(*
T0
«
save/Assign_11AssignVariable_3/Adam_1save/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
©
save/Assign_12Assign
Variable_4save/RestoreV2:12*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x*
use_locking(*
T0
®
save/Assign_13AssignVariable_4/Adamsave/RestoreV2:13*
validate_shape(*
_output_shapes
:	 x*
use_locking(*
T0*
_class
loc:@Variable_4
°
save/Assign_14AssignVariable_4/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x
¤
save/Assign_15Assign
Variable_5save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
©
save/Assign_16AssignVariable_5/Adamsave/RestoreV2:16*
validate_shape(*
_output_shapes
:x*
use_locking(*
T0*
_class
loc:@Variable_5
«
save/Assign_17AssignVariable_5/Adam_1save/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
Ø
save/Assign_18Assign
Variable_6save/RestoreV2:18*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<*
use_locking(*
T0
­
save/Assign_19AssignVariable_6/Adamsave/RestoreV2:19*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<*
use_locking(*
T0
Æ
save/Assign_20AssignVariable_6/Adam_1save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<
¤
save/Assign_21Assign
Variable_7save/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
©
save/Assign_22AssignVariable_7/Adamsave/RestoreV2:22*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<*
use_locking(
«
save/Assign_23AssignVariable_7/Adam_1save/RestoreV2:23*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<*
use_locking(*
T0
Ø
save/Assign_24Assign
Variable_8save/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<
­
save/Assign_25AssignVariable_8/Adamsave/RestoreV2:25*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<*
use_locking(*
T0
Æ
save/Assign_26AssignVariable_8/Adam_1save/RestoreV2:26*
_output_shapes

:<*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
¤
save/Assign_27Assign
Variable_9save/RestoreV2:27*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:
©
save/Assign_28AssignVariable_9/Adamsave/RestoreV2:28*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:
«
save/Assign_29AssignVariable_9/Adam_1save/RestoreV2:29*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(

save/Assign_30Assignbeta1_powersave/RestoreV2:30*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 

save/Assign_31Assignbeta2_powersave/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
¬
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
R
save_1/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save_1/StringJoin/inputs_1Const*<
value3B1 B+_temp_f66bc6cd4b8a437b9d40723386a0cf77/part*
dtype0*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_1/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ų
save_1/SaveV2/tensor_namesConst*
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
: 
„
save_1/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 

save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_power*.
dtypes$
"2 

save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
_output_shapes
: *
T0
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*
_output_shapes
:*
T0*

axis 

save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(

save_1/IdentityIdentitysave_1/Const^save_1/MergeV2Checkpoints^save_1/control_dependency*
T0*
_output_shapes
: 
Ū
save_1/RestoreV2/tensor_namesConst*
value’Bü BVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_power*
dtype0*
_output_shapes
: 
Ø
!save_1/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
¶
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Ŗ
save_1/AssignAssignVariablesave_1/RestoreV2*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
³
save_1/Assign_1AssignVariable/Adamsave_1/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: 
µ
save_1/Assign_2AssignVariable/Adam_1save_1/RestoreV2:2*
T0*
_class
loc:@Variable*
validate_shape(*&
_output_shapes
: *
use_locking(
¦
save_1/Assign_3Assign
Variable_1save_1/RestoreV2:3*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
«
save_1/Assign_4AssignVariable_1/Adamsave_1/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
­
save_1/Assign_5AssignVariable_1/Adam_1save_1/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(*
_output_shapes
: 
²
save_1/Assign_6Assign
Variable_2save_1/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
·
save_1/Assign_7AssignVariable_2/Adamsave_1/RestoreV2:7*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @
¹
save_1/Assign_8AssignVariable_2/Adam_1save_1/RestoreV2:8*
T0*
_class
loc:@Variable_2*
validate_shape(*&
_output_shapes
: @*
use_locking(
¦
save_1/Assign_9Assign
Variable_3save_1/RestoreV2:9*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
­
save_1/Assign_10AssignVariable_3/Adamsave_1/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
Æ
save_1/Assign_11AssignVariable_3/Adam_1save_1/RestoreV2:11*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(*
_output_shapes
:@
­
save_1/Assign_12Assign
Variable_4save_1/RestoreV2:12*
_output_shapes
:	 x*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
²
save_1/Assign_13AssignVariable_4/Adamsave_1/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x
“
save_1/Assign_14AssignVariable_4/Adam_1save_1/RestoreV2:14*
T0*
_class
loc:@Variable_4*
validate_shape(*
_output_shapes
:	 x*
use_locking(
Ø
save_1/Assign_15Assign
Variable_5save_1/RestoreV2:15*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x*
use_locking(
­
save_1/Assign_16AssignVariable_5/Adamsave_1/RestoreV2:16*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
Æ
save_1/Assign_17AssignVariable_5/Adam_1save_1/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(*
_output_shapes
:x
¬
save_1/Assign_18Assign
Variable_6save_1/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<
±
save_1/Assign_19AssignVariable_6/Adamsave_1/RestoreV2:19*
T0*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<*
use_locking(
³
save_1/Assign_20AssignVariable_6/Adam_1save_1/RestoreV2:20*
_class
loc:@Variable_6*
validate_shape(*
_output_shapes

:x<*
use_locking(*
T0
Ø
save_1/Assign_21Assign
Variable_7save_1/RestoreV2:21*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<*
use_locking(*
T0
­
save_1/Assign_22AssignVariable_7/Adamsave_1/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
Æ
save_1/Assign_23AssignVariable_7/Adam_1save_1/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(*
_output_shapes
:<
¬
save_1/Assign_24Assign
Variable_8save_1/RestoreV2:24*
validate_shape(*
_output_shapes

:<*
use_locking(*
T0*
_class
loc:@Variable_8
±
save_1/Assign_25AssignVariable_8/Adamsave_1/RestoreV2:25*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<
³
save_1/Assign_26AssignVariable_8/Adam_1save_1/RestoreV2:26*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(*
_output_shapes

:<
Ø
save_1/Assign_27Assign
Variable_9save_1/RestoreV2:27*
_output_shapes
:*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
­
save_1/Assign_28AssignVariable_9/Adamsave_1/RestoreV2:28*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:
Æ
save_1/Assign_29AssignVariable_9/Adam_1save_1/RestoreV2:29*
_class
loc:@Variable_9*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
£
save_1/Assign_30Assignbeta1_powersave_1/RestoreV2:30*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
£
save_1/Assign_31Assignbeta2_powersave_1/RestoreV2:31*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(*
_output_shapes
: 
š
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
1
save_1/restore_allNoOp^save_1/restore_shard "B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
trainable_variablesļģ
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	zeros_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
L
Variable_5:0Variable_5/AssignVariable_5/read:02truncated_normal_3:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_4:08
L
Variable_7:0Variable_7/AssignVariable_7/read:02truncated_normal_5:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_6:08
L
Variable_9:0Variable_9/AssignVariable_9/read:02truncated_normal_7:08"
train_op

Adam"±
	variables£ 
D

Variable:0Variable/AssignVariable/read:02truncated_normal:08
?
Variable_1:0Variable_1/AssignVariable_1/read:02zeros:08
L
Variable_2:0Variable_2/AssignVariable_2/read:02truncated_normal_1:08
A
Variable_3:0Variable_3/AssignVariable_3/read:02	zeros_1:08
L
Variable_4:0Variable_4/AssignVariable_4/read:02truncated_normal_2:08
L
Variable_5:0Variable_5/AssignVariable_5/read:02truncated_normal_3:08
L
Variable_6:0Variable_6/AssignVariable_6/read:02truncated_normal_4:08
L
Variable_7:0Variable_7/AssignVariable_7/read:02truncated_normal_5:08
L
Variable_8:0Variable_8/AssignVariable_8/read:02truncated_normal_6:08
L
Variable_9:0Variable_9/AssignVariable_9/read:02truncated_normal_7:08
T
beta1_power:0beta1_power/Assignbeta1_power/read:02beta1_power/initial_value:0
T
beta2_power:0beta2_power/Assignbeta2_power/read:02beta2_power/initial_value:0
`
Variable/Adam:0Variable/Adam/AssignVariable/Adam/read:02!Variable/Adam/Initializer/zeros:0
h
Variable/Adam_1:0Variable/Adam_1/AssignVariable/Adam_1/read:02#Variable/Adam_1/Initializer/zeros:0
h
Variable_1/Adam:0Variable_1/Adam/AssignVariable_1/Adam/read:02#Variable_1/Adam/Initializer/zeros:0
p
Variable_1/Adam_1:0Variable_1/Adam_1/AssignVariable_1/Adam_1/read:02%Variable_1/Adam_1/Initializer/zeros:0
h
Variable_2/Adam:0Variable_2/Adam/AssignVariable_2/Adam/read:02#Variable_2/Adam/Initializer/zeros:0
p
Variable_2/Adam_1:0Variable_2/Adam_1/AssignVariable_2/Adam_1/read:02%Variable_2/Adam_1/Initializer/zeros:0
h
Variable_3/Adam:0Variable_3/Adam/AssignVariable_3/Adam/read:02#Variable_3/Adam/Initializer/zeros:0
p
Variable_3/Adam_1:0Variable_3/Adam_1/AssignVariable_3/Adam_1/read:02%Variable_3/Adam_1/Initializer/zeros:0
h
Variable_4/Adam:0Variable_4/Adam/AssignVariable_4/Adam/read:02#Variable_4/Adam/Initializer/zeros:0
p
Variable_4/Adam_1:0Variable_4/Adam_1/AssignVariable_4/Adam_1/read:02%Variable_4/Adam_1/Initializer/zeros:0
h
Variable_5/Adam:0Variable_5/Adam/AssignVariable_5/Adam/read:02#Variable_5/Adam/Initializer/zeros:0
p
Variable_5/Adam_1:0Variable_5/Adam_1/AssignVariable_5/Adam_1/read:02%Variable_5/Adam_1/Initializer/zeros:0
h
Variable_6/Adam:0Variable_6/Adam/AssignVariable_6/Adam/read:02#Variable_6/Adam/Initializer/zeros:0
p
Variable_6/Adam_1:0Variable_6/Adam_1/AssignVariable_6/Adam_1/read:02%Variable_6/Adam_1/Initializer/zeros:0
h
Variable_7/Adam:0Variable_7/Adam/AssignVariable_7/Adam/read:02#Variable_7/Adam/Initializer/zeros:0
p
Variable_7/Adam_1:0Variable_7/Adam_1/AssignVariable_7/Adam_1/read:02%Variable_7/Adam_1/Initializer/zeros:0
h
Variable_8/Adam:0Variable_8/Adam/AssignVariable_8/Adam/read:02#Variable_8/Adam/Initializer/zeros:0
p
Variable_8/Adam_1:0Variable_8/Adam_1/AssignVariable_8/Adam_1/read:02%Variable_8/Adam_1/Initializer/zeros:0
h
Variable_9/Adam:0Variable_9/Adam/AssignVariable_9/Adam/read:02#Variable_9/Adam/Initializer/zeros:0
p
Variable_9/Adam_1:0Variable_9/Adam_1/AssignVariable_9/Adam_1/read:02%Variable_9/Adam_1/Initializer/zeros:0*
serving_defaultō
 
	keep_prob
keep_prob:0
#
y_target
Placeholder_1:0
7
x_input,
Placeholder:0’’’’’’’’’  (

prediction
prediction:0,
model_output
model_output:0tensorflow/serving/predict