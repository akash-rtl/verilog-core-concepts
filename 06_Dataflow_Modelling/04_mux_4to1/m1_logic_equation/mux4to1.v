module mux(
    output out,
    input i0, i1, i2, i3,  
    input s0, s1
);

wire m0, m1, m2, m3;

assign m0 = i0 & ~s1 & ~s0;
assign m1 = i1 & ~s1 & s0;
assign m2 = i2 & s1 & ~s0;
assign m3 = i3 & s1 & s0;

assign out = m0 | m1 | m2 | m3;



endmodule