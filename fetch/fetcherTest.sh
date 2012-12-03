iverilog -o fetcherTest.vvp fetcher.v fetcherTest.v
vvp fetcherTest.vvp | tee data.txt
rm fetcherTest.vvp 
