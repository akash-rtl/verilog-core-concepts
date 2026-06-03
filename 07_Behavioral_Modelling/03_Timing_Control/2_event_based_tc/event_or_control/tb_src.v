module tb;

wire out;
reg i1, i2;

main uut(out, i1, i2);

initial begin
    $dumpfile("tb_src.vcd");
    $dumpvars(0,tb);

    $monitor("%2t -- [i1 = %b | i2 = %b] -- OUTPUT = %b ", $time, i1, i2, out);

    #5 i1 = 0; i2 = 0;
    #5 i1 = 0; i2 = 1;
    #5 i1 = 1; i2 = 0;
    #5 i1 = 1; i2 = 1;

    #5 $finish;

end

endmodule