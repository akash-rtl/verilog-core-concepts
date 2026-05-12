module tb;

wire out;
reg in1, in0, s;

mux2to1 uut(out, in1, in0, s);

initial begin
    $dumpfile("tb_mux2to1.vcd");
    $dumpvars(0,tb);

    $monitor("%2t -- in1 = %b | in0 = %b | s = %b || OUT = %b", $time, in1, in0, s, out);

    #10 in1 = 0; in0 = 1; s = 0;
    #10 s = 1;
    #10 in1 = 1; in0 = 1; s = 0;
    #10 s = 1;
    #10 $finish;

end

endmodule