module main;

reg a = 0,b= 0,c= 0,d= 0,e= 0,t= 0,x= 0,y = 0;

reg clock = 0;
always #5 clock = ~clock;
always #7 t = ~t;

always @(posedge t or negedge clock) begin
    a <= ~a;
    b <= ~b;
    c <= ~c;
end

always @(negedge t, posedge clock) begin
    d <= ~d;
    e <= ~e;
end

always @(*) begin
    x = a ? b+d : b+e  ; //Since these are combinational block here non blocking assignment is not mandatory.
    y = a ? c+e : c+e  ;
end

initial begin
    
    $dumpfile("tb_src.vcd");
    $dumpvars(0,main);

    $monitor("%2t -- a = %b | b = %b | c = %b | d = %b | e = %b | t = %b | x = %b | y = %b | ",$time, a, b, c, d, e, t, x, y);

    #105 $finish;
end

endmodule