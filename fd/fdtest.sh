iverilog -o testCPU.vvp testCPU.v decode.v fetcher.v
vvp testCPU.vvp | tee data.txt
#gtkwave test.vcd & 
rm testCPU.vvp 
