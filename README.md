# ca-Lab3

Goal: Build a simple CPU in verilog in under 12 hours.

It should be capable of running CORDIC, an eight tap FIR filter, and calculating SQRT in a reasonable amount of time.

It should support branch, jump, ALU, and load/store word instructions, being functionally turing complete.

It'll be RISC, Harvard arch, modeled off MIPS.

* FIR gets I16Q16 and returns I16Q16
* CORDIC gets a unitless I1Q31, gives 16b angles with 16b precision
* SQRT gets and gives I12Q20, the result having 12b precision

-----

To calculate an FIR filter, each output data point requires, per tap:

* one 32b word move to advance the data one timestep
* one 32b multiply of a value times a 32b pre-set constant 
* one sum result from the 32b multiply with the running total

Additionally, load/store operations may be required to ensure data is available if register space for all constants / values is not available.

This results in somewhere no less than 24 cycles to calculate one output value, and possibly more than 48 cycles if each constant and value are stored in RAM.

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

---

To calculate the square root of the temperature of the apparatus,
we will need to make the following assumptions:

* the sensor measures in Kelvins
* the apparatus will never go above 4096 Kelvin

We need 12 bit precision, meaning that the calculated result
cannot differ from the true answer by more than 1/4096
when expressed in decimal format. We will require temperatures
to be given in I12Q20 binary form.

The square root function works as follows:

* make a best guess
* iterate on the best guess using the Newton Raphson method until the desired precision is achieved

Here is a cost analysis of each step:

* Best Guess

To make a best guess, we will iterate i through integers starting from 1
until i^2 is greater than the input N we are trying to take the square root of. Our int i will be incremented by 8 each time. The biggest i will be our first guess. In terms of hardware operations, each iteration will consist of an add, a multiply, a set-if-less-than, and a branch-if-equal-to.

Since we are bounding the temperature at 4096, we will have a maximum of 8 iterations. This means that there won't ever be more than 32 operations to make the best guess. We don't know what conditions this appartus will be used in but we will assume that for the most part, temperatures will be less than 512 Kelvin, meaning that there will be approximately 3 iterations per measurement. This amounts to 12 operations to find a best guess on average.

* Newton Raphson

The Newton Raphson method will use two multiplies, one divide, and two subtracts per iteration, according to the algorithm. It will also use an SLLV to check if the bit precision has reached desired levels. This amounts to 6 operations per iteration.

A Python simulation revealed that for temperatures less than 4096 Kelvin, the Newton Raphson method will never use more than 10 iterations, no matter how bad the initial guess is. For a good initial guess, the processor will take about 4 iterations. This means that the Newton Raphson method will use at most 60 operations and on average use 24 operations.

* Reflection

It turns out that writing a separate mechanism to find a best guess gives about the same performance as if we just guessed that most temperatures are around 300 Kelvin. This is because the average case for that temperature will take 36 operations. Even if most temps were around 4096 Kelvin, then the guesser function would only be reducing the worst case of 60 operations down to 56.
