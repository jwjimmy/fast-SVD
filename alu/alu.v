module alu (out, a, b, shamt, funct);

	// crappy ALU mk 1.0
	// could be thrice as long and twenty times as fast, but it's simply not worth it
	// note that 'a' = $s; 'b' = $v; 'out' = $d;


	output reg [31:0] out;

	reg [31:0] hi, lo;

	input [31:0] a, b;

	input [5:0] funct;

	input [4:0] shamt;

	always @ (a,b) begin

		case (funct) 
			6'h00: out = a << shamt; // lshift
			6'h02: out = a >> shamt; // rshift
			6'h10: out = hi; // move from high
			6'h12: out = lo; // move from low
			// 6'h3: out = a >>> shamt; // arithmatic right shift
			6'h18: {hi, lo} = a * b; // mul
			// 6'h19: {hi, lo} = a * b;
			6'h1A: hi = a % b; // div
			6'h1A: lo = a / b; // div
			// 6'h1B: hi = a % b; // unsigned
			// 6'h1B: lo = a / b; // unsigned
			6'h20: out = a + b;
			// 6'h21: out = a + b; // unsigned
			6'h22: out = a - b;
			// 6'h23: out = a - b; // unsigned
			6'h24: out = a & b; // and
			6'h25: out = a | b; // or
			6'h26: out = a ^ b; // or
			6'h27: out = ~(a | b); // nor
			6'h2A: out = (a < b); // set if less than

			default: out = 32'b0;

		endcase

	end

endmodule
