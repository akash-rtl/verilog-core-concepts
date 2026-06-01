module clock_gen;

reg clk;

initial
    clk = 1'b0;

always
    #10 clk = ~clk;

initial begin
    $dumpfile("tb_clk_generator.vcd");
    $dumpvars(0,clock_gen);

    #1000 $finish;
end

endmodule