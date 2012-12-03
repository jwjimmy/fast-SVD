iverilog -o decode.vvp decode.v test.v 
vvp decode.vvp | tee data.txt
gtkwave test.vcd & 
rm decode.vvp 
