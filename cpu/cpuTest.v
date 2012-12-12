module cpuT;
    reg Tclk;
    wire Ta, Tb, Tout;

    cpu cpuTester (Tclk,Ta,Tb,Tout);

    initial begin
        $monitorh($time, Ta,Tb,Tout);
        Tclk = 32'h0;#100;
        Tclk = 32'h1;#100;
        Tclk = 32'h2;#100;
        Tclk = 32'h3;#100;
        Tclk = 32'h4;#100;
        Tclk = 32'h5;#100;
        Tclk = 32'h6;#100;
    end

endmodule