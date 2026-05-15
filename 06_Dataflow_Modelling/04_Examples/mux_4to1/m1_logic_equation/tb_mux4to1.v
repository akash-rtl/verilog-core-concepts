module tb;

wire out;
reg i0, i1, i2, i3;
reg s0, s1;

mux uut(out, i0, i1, i2, i3, s0, s1);

wire [3:0]i = {i3,i2,i1,i0};
wire [1:0]s = {s1, s0};

initial begin
    $dumpfile("tb_src.vcd");
    $dumpvars(0,tb);

    $monitor("%2t i = %b -- s1s0 = %b -- OUTPUT = %b ", $time, i, s, out);

    i3 = 1; i2 = 0; i1 = 1; i0 = 1;
    #5 s1 = 0; s0 = 0;
    #5 s1 = 0; s0 = 1;
    #5 s1 = 1; s0 = 0;
    #5 s1 = 1; s0 = 1;


    #5 $finish;

end

endmodule