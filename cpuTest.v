module cpuTest;
    reg Tclk;

    cpu cpuTester (Tclk);

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