//create and, or and not gate using NAND gates:\


module my_or(
    output out,
    input x, y 
);

wire x0, y0;

nand (x0, x, x);
nand (y0, y, y);

nand(out, x0, y0);

endmodule


module my_and(
    output out,
    input x, y 
);
wire l;
nand (l, x, y);
nand(out, l, l);

endmodule



module my_not(
    output out,
    input x 
);

nand(out, x,x);

endmodule