iverilog -o cpuTest.vvp fetcher.v decode.v alu.v cpu.v cpuTest.v 
vvp cpuTest.vvp | tee data.txt
rm cpuTest.vvp 
