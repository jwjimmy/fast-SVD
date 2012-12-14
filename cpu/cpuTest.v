module cpuTest;
    reg Tclk;
    //wire [31:0] Ta, Tb, Tout; //comment this out if you dont want outputs
    //wire [31:0] Tregisters [31:0];

    //cpu cpuTester (Tclk);
    cpu cpuTester (Tclk);


    initial begin
        Tclk = 0;
        //$monitor(Tclk, ,Ta, ,Tb, ,Tout);


        repeat(10)
        begin
            #1 Tclk = ~Tclk;
        end
    end

endmodule
