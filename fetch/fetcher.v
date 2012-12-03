module fetcher (out, addr);

	output reg [31:0] out;

	input [31:0] addr;

	reg [7:0] data [65535:0];

	initial begin
		$readmemh("progmem.hex", data);
	end

	always @ (addr) begin
		out = data[addr];
	end

endmodule
