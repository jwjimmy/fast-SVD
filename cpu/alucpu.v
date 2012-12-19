module alucpu;
	reg clk;

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
	reg ALUen;

	// connect decoder output to ALU inputs and register indexes
	reg [5:0] opcode, funct;
	reg [4:0] rs, rt, rd, shamt;
	wire [25:0] addr;
	wire [15:0] imm;

	alu mather (clk, out, a, b, shamt, funct, ALUen);
	//alu mather (clk, registers[rd], registers[rs], registers[rt], shamt, funct);

	initial begin

	registers[0] = 9'h001;
	registers[1] = 9'h002;
    programCounter = 0;
	ALUen = 0;
	opcode = 6'h0;

    $display("\t\t $t clk PC\t r[0]\t  r[1]\t   r[2]\t    r[3]\trs rt rd");
    $monitorh($time, ,clk, ,programCounter, , ,registers[0], ,registers[1], ,registers[2], ,registers[3], , ,rs, ,rt, ,rd);
	clk = 0;#100


    clk = 1;
    rs = 6'h1;
    rt = 6'h0;
    rd = 6'h2;
    #100

    clk = 0; rs = 6'h1; rt = 6'h0; rd = 6'h2; // this tells the program to add together two numbers - one in r1, one in r0, and put the result in r2
    #100
    clk = 1; rs = 6'h1; rt = 6'h2; rd = 6'h3;
    #100

    clk = 0; rs = 6'h1; rt = 6'h2; rd = 6'h3;
    #100

    clk = 1; rs = 6'h1; rt = 6'h0; rd = 6'h2;
    #100
    clk = 0; rs = 6'h2; rt = 6'h1; rd = 6'h3;
    #100
    clk = 1;

	end

	//always @ (posedge clk) begin
	always @ (negedge clk) begin

		case (opcode)
			// R type
			// ALU calls implicit
			6'h0:
				begin
					$display("Before updating a and b: out = %h. a = %h, b = %h, rs = %h, rt = %h, rd = %h, ALUen = %h",out,a,b,rs,rt,rd,ALUen);
					a = registers[rs];
					b = registers[rt];
					ALUen = 1;
					$display("After  updating a and b: out = %h. a = %h, b = %h, rs = %h, rt = %h, rd = %h, ALUen = %h",out,a,b,rs,rt,rd,ALUen);
                    //Cout = registers[rd];

					registers[rd] = out;
					ALUen = 0;
        			programCounter = programCounter + 1;

				end
			// I type: li
			// load 16-bit immediate value into register 'rd'
			6'hF:
				begin
					registers[rs] = imm;
					//$display(imm);
        			programCounter = programCounter + 1;
				end
			// I type: lw
			// load word from RAM address $(rs + imm) to register 'rt'
            6'h23:
				begin
					registers[rt] = ram[rs + imm];
        			programCounter = programCounter + 1;
				end
			// I type: sw
			// store word from register 'rt' to RAM address $(rs + imm)
            6'h2B:
				begin
					ram[rs+imm] = registers[rt];
        			programCounter = programCounter + 1;
				end
			// I type: beq
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
