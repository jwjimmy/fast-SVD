module decoderTest;
    //initialize input and output variables
    reg[31:0] Tmemory;
    wire[5:0] Topcode, Tfunct;
    wire[4:0] Trs, Trt, Trd, Tshamt;
    wire[25:0] Taddr;
    wire[15:0] Timm;

    initial
    begin
        $monitor($time, , Tmemory, , Topcode, , Tfunct, , Taddr);
        $dumpfile("test.vcd");
        $dumpvars(0,decoderTest);

        Tmemory = 32'b00000000000000000000000000000011;
        #2000;
        Tmemory = 32'b00001100000000000000000000000011;
        #2000;
        Tmemory = 32'b11000000000000000000000000000011;
        #2000;
        Tmemory = 32'b10000000000000000000000000000011;
        #2000;
        Tmemory = 32'b00000011110000000000000000000011;
        #2000;
    end

    decoder tester
        (Tmemory,
        Topcode,
        Tfunct,
        Trs,
        Trt,
        Trd,
        Tshamt,
        Taddr,
        Timm);
endmodule
