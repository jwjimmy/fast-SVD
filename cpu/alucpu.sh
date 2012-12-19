iverilog -o alucputest.vvp alu.v alucpu.v
vvp alucputest.vvp | tee data.txt
rm alucputest.vvp 
