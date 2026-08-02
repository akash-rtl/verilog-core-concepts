module tb;

wire [6:0] out_xor, out_and, out_or;
reg [6:0] i1, i2;

main uut(i1, i2, out_or, out_xor, out_and);

initial begin
//     $dumpfile("tb_src.vcd");
//     $dumpvars(0,tb);

    $monitor("%2t -- [i1 = %b | i2 = %b] -- OUT_OR = %b | OUT_XOR = %b | OUT_AND = %b ", $time, i1, i2, out_or, out_xor, out_and);

    #5 i1 = 14; i2 = 123;
    #5 i1 = 22; i2 = 56;
    #5 i1 = 31; i2 = 23;
    #5 i1 = 1; i2 = 1;

    #5 $finish;

end

endmodule