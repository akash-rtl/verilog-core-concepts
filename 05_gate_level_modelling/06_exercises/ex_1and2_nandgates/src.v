//Exercise 1 -> create and, or and not gate using NAND gates:\


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


//------------------------------------------------------------------------------
//Exercise 2 -> Create XOR logic using above gates


module my_xor(
    output out,
    input x,y
);

wire s1, s2;
wire x0, y0;

my_not n1(x0, x);
my_not n2(y0, y);
my_and a1(s1, x, y0);
my_and a2(s2, x0, y);

my_or o1(out, s1, s2);

endmodule

