//Model the following sop logic using only and, or, not gate only.
// sum = a.b.c_in + a`.b`.c_in + a`.b.c_in` + a.b`.c_in`
// c_out = ab + bc_in + ac_in

module fulladder(
    output sum, c_out,
    input a, b, c_in
);

wire a0, b0, c_in0;
wire [3:0] s;
wire [2:0] c;

not (a0, a);
not (b0, b);
not (c_in0, c_in);

and (s[0],a,b,c_in);
and (s[1],a0,b0,c_in);
and (s[2],a,b0,c_in0);
and (s[3],a0,b,c_in0);

and (c[0], a, b);
and (c[1], c_in, b);
and (c[2], a, c_in);


or(sum, s[0], s[1], s[2], s[3]);
or(c_out, c[0], c[1], c[2]);


endmodule