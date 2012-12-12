iverilog -o cpuTest.vvp -y fetch -y decode -y alu -m fetcher.v -m decode.v -m alu.v cpu.v cpuTest.v 
vvp cpuTest.vvp | tee data.txt
rm cpuTest.vvp 
