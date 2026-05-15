module fulladder(
    output [3:0] out,
    output c_out,
    input [3:0] i1, i2,
    input c_in
);

assign {c_out, out} = i1 + i2 + c_in;

endmodule 