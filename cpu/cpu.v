module cpu (clk);
	input clk;

	// instantiate thirty two single-word registers
	reg [31:0] registers [31:0];

	// instantiate four kilowords of RAM, avoid using 8b words to save program counter / stack logic overhead
	reg [31:0] ram [4095:0];

	// instantiate wire for 32b instruction bus
	wire [31:0] instruction;

	// instantiate register for program counter, to keep track of address of instruction to be fetched / instruction fetched
	reg [31:0] programCounter;

	// instantiate registers for ALU inputs
	output reg [31:0] a, b;
	wire [31:0] out;
	output reg [31:0] Cout;

	// connect decoder output to ALU inputs and register indexes
	wire [5:0] opcode, funct;
	wire [4:0] rs, rt, rd, shamt;
	wire [25:0] addr;
	wire [15:0] imm;

	fetcher fetch (clk, instruction, programCounter);

	decode decode (clk, instruction, opcode, funct, rs, rt, rd, shamt, addr, imm);

	alu mather (clk, out, a, b, shamt, funct);

	initial begin

	registers[0] = 2'h1;
	registers[1] = 2'h2;
    programCounter = 0;

    $monitor(clk, ,a, ,b, ,out);

	end

	always @ (posedge clk) begin

		case (opcode)
			// R type
			// ALU calls implicit
			6'h0:
				begin
					a = registers[rs];
					b = registers[rt];
                    //Cout = registers[rd];
					registers[rd] = out;
					Cout = out;

        			programCounter = programCounter + 1;
				end
			// I type
			// load word from RAM address $(rs + imm) to register 'rt'
            6'h23:
				begin
					registers[rt] = ram[rs + imm];
				end
			// I type
			// store word from register 'rt' to RAM address $(rs + imm)
            6'h2B:
				begin
					ram[rs+imm] = registers[rt];
				end
			// I type
			// conditional branch if registers 'rs' and 'rt' contain the same value
            6'h4:
				begin
					if (registers[rs] == registers[rt])
					begin
						programCounter = imm;
					end
				end
			// J type
			// unconditional jump to 'imm'
            6'h2:
				begin
					programCounter = imm;
				end
        endcase
    end
endmodule
