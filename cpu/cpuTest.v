module cpuTest;
    reg Tclk;
    wire [31:0] Ta, Tb, Tout; //comment this out if you dont want outputs
    //wire [31:0] Tregisters [31:0];

    //cpu cpuTester (Tclk);
    cpu cpuTester (Tclk,Ta,Tb,Tout);


    initial begin
        Tclk = 0;


        repeat(10)
        begin
            $display(Tclk, ,Ta, ,Tb, ,Tout);
            #1 Tclk = ~Tclk;
            //always @ (negedge Tclk) initial begin
            $display(Tclk, ,Ta, ,Tb, ,Tout);
            //end
        end
    end

endmodule
