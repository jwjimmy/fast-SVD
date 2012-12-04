module cpu (clk)
	input clk;

	reg [31:0] registers [31:0];

	wire [31:0] instruction;
	reg [31:0] programCounter;

	reg [31:0] a, b;

	wire [5:0] opcode, funct;
	wire [4:0] rs, rt, rd, shamt;
	wire [25:0] addr;
	wire [15:0] imm;
	wire [31:0] out;

	fetcher fetch (instruction, programCounter);

	alu mather (out, a, b, shamt, funct);  

	decoder decode (instruction, opcode, funct, rs, rt, rd, shamt, addr, imm);

	initial begin
		
	always @ (posedge clk) begin

		case (opcode)
			5'h0: // R type
				begin
					a = registers[rs];
					b = registers[rv];
					registers[rd] = out;
				end;
            2'h23: //I type - load word
				begin
					registers[rt] = ram[rs + imm];
				end
            2'h2B: //I type - store word
				begin
					ram[rs+imm] = registers[rt]
				end
            2'h4: //I type - branch
				begin
					if (registers[rs] = registers[rt]);
					begin
				 
            2'h2: //J type - jump
				begin
					programCounter = imm;
				end
            default:; //error
        endcase  
