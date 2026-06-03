module main;

reg a,b,c;
reg clock = 0;

always #10 clock = ~clock;

always @(clock) c = 1;

always @(posedge clock) a = b; 

always @(negedge clock) begin
    c = 0; a = 0;
end

always b = @(posedge clock) c; //c is evaluated immediately and assigned at posedge of clock.

initial begin

    $dumpfile("tb_src.vcd");
    $dumpvars(0,main);

    $monitor("%2t -- a = %b | b = %b | c = %b | ", $time, a, b, c);
    #105 $finish;
end
endmodule