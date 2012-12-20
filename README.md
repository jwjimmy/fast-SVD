# fast-SVD

An processor with an assembly math library. Designed to compute singular value decompositions via CORDIC operations.
Includes a compiler for assembly input (compiler.py) and a decompiler (decipher.py) to decompose binary machine
instructions into recognizable MIPS assembly parameters (e.g. opcode, shamt, funct).

It will support branch, jump, ALU, and load/store word instructions.
CORDIC gets a unitless I1Q31, gives 16b angles with 16b precision.

It'll be RISC, Harvard architecture, modeled off MIPS assembly.

-----
Current structure of the repo

All components relevant to the SVD processor are in the directory labeled cpu.

-----

Setting Up

This CPU was developed in Icarus Verilog on an Ubuntu machine.

Icarus Verilog's installation guide can be found here:

http://iverilog.wikia.com/wiki/Installation_Guide


Icarus Verilog has two main executables:

1. iverilog - compiles .v modules into .vvp binaries
2. vvp - executes .vvp binaries and produces outputs from the simulated hardware



-----

To calculate CORDIC, the following calculations are required:
 
* three comparisons to determine the appropriate value with which to normalize the input value to between 0 and pi/2.
* a maximum of one subtraction where the input theta is subtracted from the previously determined value
* a maximum of one store of the previously determined offset value to a known memory location or place on the stack
* one multiply / divide by constant to convert input I1Q31 number (b/t -1 and 1) to a CORDIC-manipulatable integer

for each precision-increasing iteration of the algorithm:

* three right shifts (one to get sign, two to k)
* six add/subtracts
* three xors (against d)
* one 32b fetch from LUT memory (CORDIC constant)
* increment iteration counter (k)

at the end of iterating:

* one 32b fetch of normalization / offset value
* one 32b addition of normalization / offset value

This gives a total of eight operations plus fourteen operations per loop iteration.

Trials(see cordic.c and make.sh) indicate that at least ten iterations are required to deliver reasonable results.

This gives a total of 148 operations per calculation of sine and cosine.
