module fetchTester;

	wire [31:0] out;
	reg [31:0] addr;

	reg clk;

	initial begin
		clk = 0;
		repeat (10000)
		begin
			#1 clk = ~clk;
		end
	end
		
	fetcher fetcherTester (clk, out, addr);

	initial begin
		$monitorh($time, ,, out, ,, addr);
		addr = 32'b0;
		#10;
		addr = 32'b1;
		#10;
		addr = 32'b1000;
		#10;
	end


endmodule
