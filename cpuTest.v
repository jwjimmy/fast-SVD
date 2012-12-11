module cpuTest;
    input clk;

    reg [31:0] Tregisters [31:0];

    wire [31:0] Tinstruction;
    reg [31:0] TprogramCounter;

    reg [31:0] Ta, Tb;

    wire [5:0] Topcode, Tfunct;
    wire [4:0] Trs, Trt, Trd, Tshamt;
    wire [25:0] Taddr;
    wire [15:0] Timm;
    wire [31:0] Tout;

    cpu cpuTester (Tout, addr);

    initial begin
        $monitorh($time, ,, Tout, ,, addr);
        addr = 32'b0;
        #100;
        addr = 32'b1;
        #100;
        addr = 32'b1000;
        #100;
    end

endmodule