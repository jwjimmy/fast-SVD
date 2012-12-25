#matrixmath.asm

#Gets in 4 32-bit values as the input arguments. a,b,c,d
#These represent the values in the matrix, as I16Q16

#To solve SVD, we must calculate the inputs to be sent to atan
#which would be (c+b)/(d-a) for the sum arctan
#and (c-b)/(d+a) for the difference arctan
#calculations done with I16Q16 precision.

#the result is then given to arctan.

#in addition, these fixed point adders and divider

#Summary of notation for registers used:
#v0-v1: argument registers, used for add and multiply functions, for example, no guarantee value
#a0-a3: argument registers, used for initial matrix
#t0-t7: temporary registers, can be used for anything, no guarantee of initial value, sometimes matrix results
#s0-s7: U and V, respectively
#t8-k1: E, diagonal matrix (no OS, so k0 and k1 won't be used otherwise)	
#hi,lo: used to express multiplication results, fixed point, and other non-matrix returns

#--- Begin Program ---#

add $t0, $zero, 1 #determines which subroutine to run

beq $t0, 0, AI2U2TEST

beq $t0, 1, MI16U16TEST
j End

#SVD demonstrates singular value decomposition of a 2x2 matrix
# represented with I8U8 precision in registers a0-a3
# U, V, and E, the return values, are represented in registers s0-k1
SVD:
#initialize matrix registers (Currently 0)
add $a0, $zero, $zero
add $a1, $zero, $zero
add $a2, $zero, $zero
add $a3, $zero, $zero

#FIXME: calculate SVD, implement more functions

j End

#ADDI16U16 (v0,v1) does addition in the I16U16 domain
#returning result in hi
#with low set to 1 if positive overflow occurs, 2 if negative overflow occurs
#Status: fully implemented and tested
ADDI16U16: add $t0, $v0, $v1
#mthi $t0
srl $t1, $v0, 31
srl $t2, $v1, 31
bne $t1, $t2, EADDI16U16 #conflicting signs never overflow
srl $t4, $t0, 31
beq $t1, $t4, EADDI16IU16 #no change in sign value means no overflow 
beq $t4, 1, NADDI16U16 #change in 1 sign value, overflow

#records result with positive overflow, $t4 == 1, $t1,2 == 0,
add $t0, $zero, 2147483647
mthi $t0
mtlo $t4 #should be 1
jr $ra
#records result without overflow
EADDI16U16:
mthi $t0
jr $ra

#records result with negative overflow, $t4 == 0, $t1,2 == 1,
NADDI16U16:
add $t0, $zero, 2147483648
add $t5, $zero, 2
mthi $t0
mtlo $t5
jr $ra

#ADDI2U2 (v0,v1) does addition in the I2U2 domain
#returning result in hi
#with low set to 1 if positive overflow occurs, 2 if negative overflow occurs
#Status: fully implemented and tested
ADDI2U2: add $t0, $v0, $v1
#mthi $t0
srl $t1, $v0, 3
srl $t2, $v1, 3
bne $t1, $t2, SADDI2U2 #conflicting signs never overflow
srl $t4, $t0, 3
beq $t1, $t4, EADDI2U2 #no change in 0 sign value means no overflow 
beq $t4, 3, SADDI2U2 #no change in 1 sign value means no overflow, but must shift back to I2Q2
beq $t4, 2, NADDI2U2 #change in 1 sign value, overflow

#records result with positive overflow, $t4 == 1, $t1,2 == 0,
add $t0, $zero, 7
mthi $t0
mtlo $t4 #should be 1
jr $ra
#records result without overflow
EADDI2U2:
mthi $t0
jr $ra
#records negative result without overflow, with shift back to I2Q2
SADDI2U2:
sll $t0, $t0, 28
srl $t0, $t0, 28
mthi $t0
jr $ra
#records result with negative overflow, $t4 == 2, $t1,2 == 1,
NADDI2U2:
add $t0, $zero, 8
mthi $t0
mtlo $t4 #should be 2
jr $ra

#MULI16U16 (v0,v1) does multiplication in the I16U16 domain
#it calculates results using temp registers and hi/lo
#returning result in hi
#with low set to 1 if overflow occurs
MULI16U16: mult $v0,$v1 #FIXME: Implement overflow detection #TODO: Improve testbench
mfhi $t0
mflo $t1
sll $t2, $t0, 16
srl $t3, $t1, 16
add $t4, $t2, $t3
mthi $t4

jr $ra

#Multimlies



#AI2U2TEST
#testing suite
#initialize parameters: a,b and answer
#if add(a,b) provides proper answer, do next test
#else set $lo to b1111... and end program

#Tests:
#0+0 = 0
#.25+.25 = .5
#0+1.75 = 1.75
#1.75+0 = 0
#1+1 = 1.75 (overflow)
#(-1)+(-.75) = -1.75
#(-1)+(-1.25) = -2 (overflow)
#1+(-1) = 0
#(-1)+1 = 0
#1+(-0.25) = 0.75
#(0.25)-1 = -0.75
#1.75+(-2) = -0.25
AI2U2TEST:
add $v0, $zero, 0
add $v1, $zero, 0
jal ADDI2U2
add $t0, $zero, 0
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 1
add $v1, $zero, 1
jal ADDI2U2
add $t0, $zero, 2
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 0
add $v1, $zero, 7
jal ADDI2U2
add $t0, $zero, 7
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 7
add $v1, $zero, 0
jal ADDI2U2
add $t0, $zero, 7
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 4
add $v1, $zero, 4
jal ADDI2U2
add $t0, $zero, 7
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 12
add $v1, $zero, 13
jal ADDI2U2
add $t0, $zero, 9
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 12
add $v1, $zero, 11
jal ADDI2U2
add $t0, $zero, 8
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 4
add $v1, $zero, 12
jal ADDI2U2
add $t0, $zero, 0
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 12
add $v1, $zero, 4
jal ADDI2U2
add $t0, $zero, 0
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 4
add $v1, $zero, 15
jal ADDI2U2
add $t0, $zero, 3
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 15
add $v1, $zero, 4
jal ADDI2U2
add $t0, $zero, 3
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 7
add $v1, $zero, 8
jal ADDI2U2
add $t0, $zero, 15
mfhi $t1
bne $t0, $t1, Fail

j End

#testing suite
#initialize parameters: a,b and answer
#if multiply(a,b) provides proper answer, do next test
#else set $lo to 0b1111... and end program

#tests:
#0*0 = 0
#1*1 = 1
#-1*-1 = 1
#1*-1 = -1
#2*-2 = -4
MI16U16TEST:
add $v0, $zero, 0
add $v1, $zero, 0
jal MULI16U16
add $t0, $zero, 0
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 65536
add $v1, $zero, 65536
jal MULI16U16
add $t0, $zero, 65536
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 4294901760
add $v1, $zero, 4294901760
jal MULI16U16
add $t0, $zero, 65536
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 65536
add $v1, $zero, 4294901760
jal MULI16U16
add $t0, $zero, 4294901760
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 131072
add $v1, $zero, 4294836224
jal MULI16U16
add $t0, $zero, 4294705152
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 1879048192
add $v1, $zero, 2415919104
jal MULI16U16
add $t0, $zero, 0
mfhi $t1
bne $t0, $t1, Fail

add $v0, $zero, 65336
add $v1, $zero, 2415919104
jal MULI16U16
add $t0, $zero, 2415919104
mfhi $t1
bne $t0, $t1, Fail


j End

Fail: add $t0, $zero, 4294967295 
mtlo $t0
End: syscall

#scratchpad:

#testing suite
#initialize parameters, and save answer
#if the function provides proper answer, do next test