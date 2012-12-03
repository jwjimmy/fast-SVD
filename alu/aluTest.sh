iverilog -o aluTest.vvp alu.v aluTest.v
vvp aluTest.vvp | tee data.txt
rm aluTest.vvp 
