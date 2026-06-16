module main;

reg x,y;
reg [1:0] z,w;

initial begin
    x = 'b0;
    y = 'b1;
    z = {x,y};
    w = {y,x};
end

endmodule
