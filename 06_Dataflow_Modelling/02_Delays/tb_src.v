`timescale 1ns / 100ps  // Unit is 1ns, Precision is 0.1ns (100ps)

module tb;

wire out;
reg i1, i2;

main uut(out, i1, i2);

initial begin
    $dumpfile("tb_src.vcd");
    $dumpvars(0,tb);

    $monitor("%3t -- [i1 = %b | i2 = %b] -- OUTPUT = %b ", $time, i1, i2, out);

    #5 i1 = 0; i2 = 0;
    //Adding a pulse with width -> 0.8 sec
    #5 i1 = 1; i2 = 1;
    #0.5 i1 = 0; i2 = 1;
    //
    #4.5 i1 = 1; i2 = 0;
    #5 i1 = 1; i2 = 1;

    #5 $finish;

    // #10 i1 <= 1;
    // #10.5 i1 <= 0;

end

endmodule