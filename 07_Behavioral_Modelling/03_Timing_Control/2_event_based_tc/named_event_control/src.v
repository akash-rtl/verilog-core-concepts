module main;


reg count_enable;
integer count = 0;

reg clock = 0;
always #10 clock = ~clock;

event counting;

always @(clock) begin
    if(count_enable)
        -> counting;
end

always @(counting) begin
    count <= count + 1;
end

initial begin
    count_enable <= #20 1; 
    count_enable <= #40 0;
    count_enable <= #80 1;
    count_enable <= #90 0;
end

initial begin
    
    $dumpfile("tb_src.vcd");
    $dumpvars(0,main);

    $monitor("%2t -- count_enable = %b | count = %d ", $time, count_enable, count);

    #105 $finish;
end

endmodule