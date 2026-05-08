module mux(
    output OUT,
    input I0, I1, I2, I3,
    input S1, S0
);
wire y0, y1, y2, y3;
wire S_1, S_0;

not (S_1, S1);
not (S_0, S0);

and (y0, I0, S_1, S_0);
and (y1, I1, S_1, S0);
and (y2, I2, S1, S_0);
and (y3, I3, S1, S0);

or (OUT, y0, y1, y2, y3);

endmodule