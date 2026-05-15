module fa_4bit(
    output [3:0]out,
    output c_out,
    input [3:0] x,y
    //input c_in
);

wire [2:0] c_int;


fa f0(.out(out[0]),.c_out(c_int[0]), .x(x[0]), .y(y[0]), .c_in(1'b0));
fa f1(out[1], c_int[1], x[1], y[1], c_int[0]);
fa f2(out[2], c_int[2], x[2], y[2], c_int[1]);
fa f3(out[3], c_out, x[3], y[3], c_int[2]);

endmodule


module fa(
    output out,c_out,
    input x, y, c_in
);
wire s1, s2, s3;

xor(s1, x, y);
xor(out, s1, c_in);


and(s2, c_in, s1);
and(s3, x, y);
or(c_out, s2, s3);

endmodule