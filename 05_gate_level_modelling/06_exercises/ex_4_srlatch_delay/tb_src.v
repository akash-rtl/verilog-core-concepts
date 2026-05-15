module tb;

wire q, qbar;
reg set, reset;

sr_latch uut(q, qbar, set, reset);

initial begin
    $dumpfile("tb_src.vcd");
    $dumpvars(0, tb);

    $monitor("%2t -- Set = %b | Reset = %b || Q = %b | Qbar = %b", $time, set, reset, q, qbar);

    #5 set = 0; reset = 1;
    #5 set = 1; reset = 0;
    #5 set = 0; reset = 0;
    #5 set = 0; reset = 1;
    #5 set = 1; reset = 1;

    #5 $finish;

end

endmodule