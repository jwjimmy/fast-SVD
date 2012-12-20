module cpuTest;
    reg Tclk;

    cpu cpuTester (Tclk);


    initial begin
        Tclk = 0;

        repeat(30)
        begin
            #100 Tclk = ~Tclk;
        end
    end

endmodule
