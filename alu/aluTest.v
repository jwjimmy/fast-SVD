module aluTester;

	wire [31:0] out;
	reg [31:0] a, b;
	reg [4:0] shamt;
	reg [5:0] funct;
	
	alu aluTester (out, a, b, shamt, funct);

	initial begin
		$display("		$time,	out,	a,	  b,	 shamt,	 funct");
		$monitorh($time, ,, out, ,, a, ,, b, ,, shamt, ,, funct);
		a = 32'h1000;
		b = 32'h0004;
		funct = 6'b0;
		shamt = 5'b1;
		#100;
		funct = 6'b10;
		#100;
	end

endmodule
