module decoder (
input [31:0] memory,
output reg [5:0] opcode, funct,
output reg [4:0] rs, rt, rd, shamt,
output reg [25:0] addr,
output reg [15:0] imm
);
    always @ (memory) begin
        //R type
        opcode = memory[31:26];
        rs = memory[25:21];
        rt = memory[20:16];
        rd = memory[15:11];
        shamt = memory[10:6];
        funct = memory[5:0];

        //I type
        imm = memory[15:0];

        //J type
        addr = memory[25:0];
    end
endmodule
