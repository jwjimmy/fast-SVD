iverilog -o cpuTest.vvp cpu.v cpuTest.v fetch/fetcher.v decode/decode.v
vvp cpuTest.vvp | tee data.txt
rm cpuTest.vvp 