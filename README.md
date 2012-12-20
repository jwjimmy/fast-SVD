# fast-SVD

-----

The current goal is to have a CPU that computes the SVD of any 2x2 matrix.

The ultimate goal is to have a CPU and a grid of systolic arrays
that computes the SVD of any matrix that we can adapt the architecture to support, in `nlog(n)` time!.

-----

#Setting Up

This CPU was developed in Icarus Verilog on an Ubuntu machine.
Icarus Verilog's installation guide can be found here:
http://iverilog.wikia.com/wiki/Installation_Guide

Icarus Verilog has two main executables:
* iverilog - compiles .v modules into .vvp binaries
* vvp - executes .vvp binaries and produces outputs from the simulated hardware

If you care about waveform outputs then you can use GTKWave to generate waveforms from vvp's monitor data.
http://gtkwave.sourceforge.net/
Personally I just looked at the printouts as I needed.

We use shell scripting to test modules, covered in the next section.

-----

#Workflow

All components relevant to the SVD processor are in the directory labeled cpu.

Here is a typical workflow, assuming we have a Verilog module called module.v:
```
vim module.v          #edit the module with whatever changes you are looking for
./test.sh             #use shell scripting to compile module.v and run the resulting binary
```

Sample output of test.sh,
assuming that it is running a CPU being told to load some numbers into registers r[0] to r[2],
while r[0] and r[1] are initialized to have values 00000001 and 00000002 at the beginning:
```
WARNING: fetcher.v:13: $readmemh: Standard inconsistency, following 1364-2005.
 $t clk PC		instr	  r[0]	  r[1]	   r[2]	    r[3]	   rs rt rd
   0 0 00000000 xxxxxxxx  00000001 00000002 xxxxxxxx xxxxxxxx  xx xx xx
 100 1 00000000 3c000005  00000001 00000002 xxxxxxxx xxxxxxxx  00 00 00
 200 0 00000001 3c000005  00000005 00000002 xxxxxxxx xxxxxxxx  00 00 00
 300 1 00000001 3c200006  00000005 00000002 xxxxxxxx xxxxxxxx  01 00 00
 400 0 00000002 3c200006  00000005 00000006 xxxxxxxx xxxxxxxx  01 00 00
 500 1 00000002 3c400006  00000005 00000006 xxxxxxxx xxxxxxxx  02 00 00
 600 0 00000003 3c400006  00000005 00000006 00000006 xxxxxxxx  02 00 00
```
How did we tell the CPU to do these instructions?
We wrote a file called assem.txt, which looks like this:
```
li $0 5
li $1 6
li $2 6
```
We ran assem.txt through compiler.py with the following command:
```
python compiler.py assem.txt > test.hex
```
Note that the output is directed into test.hex.

text.hex is read by the fetcher.v module.
The register within cpu.v called "programCounter" points to
the line number of the next instruction from test.hex to grab.

Now we'll talk about how the CPU uses this stuff.

-----

#CPU

 Note that the test bench (cpuTest.v) has only one function:
 initialize a cpu.v module and an external clock, and make the clock go up and down a bunch of times.

 cpu.v is dependent on the following modules:
 fetcher.v, decode.v, and alu.v

* fetcher.v is set to grab the next instruction from program memory at every positive clock edge.
* decode.v is set to decode the instruction as soon as fetcher.v is done fetching.
* cpu.v is set to prepare the input data for the alu every negative clock edge (after decode.v is finished)
* alu.v is set to compute inputs and outputs in place as soon as the data (a, b, out) are prepared
* cpu.v is then set to update the registers based on the alu as soon as the alu is finished.


It runs like clockwork!

-----

#Description

An processor with an assembly math library. Designed to compute singular value decompositions via CORDIC operations.
Includes a compiler for assembly input (compiler.py) and a decompiler (decipher.py) to decompose binary machine
instructions into recognizable MIPS assembly parameters (e.g. opcode, shamt, funct).

It supports branch, jump, ALU, and load/store word instructions.
It'll be RISC, Harvard architecture. Library is modeled off MIPS assembly.
CORDIC gets a unitless I1Q31, gives 16b angles with 16b precision.

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
