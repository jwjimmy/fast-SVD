module fetcher (clk, out, addr);

	input clk;

	output reg [31:0] out;

	input [31:0] addr;

	reg [31:0] data [65535:0];

	initial //begin
		$readmemh("progmem.hex", data);
	//end

	always @ (negedge clk) begin
		out = data[addr];
	end

endmodule
