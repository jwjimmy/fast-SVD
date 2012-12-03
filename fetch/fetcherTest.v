module fetchTester;

	wire [31:0] out;
	reg [31:0] addr;
	
	fetcher fetcherTester (out, addr);

	initial begin
		$monitorh($time, ,, out, ,, addr);
		addr = 32'b0;
		#100;
		addr = 32'b1;
		#100;
		addr = 32'b10;
		#100;
	end

endmodule
