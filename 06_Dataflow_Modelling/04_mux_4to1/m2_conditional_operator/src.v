module mux(
    output out,
    input i0, i1, i2, i3,  
    input s0, s1
);

assign out = s1 ? (s0 ? i3 : i2) : ( s0 ? i1 : i0);


endmodule