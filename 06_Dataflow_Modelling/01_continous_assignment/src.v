module main(
    output out,
    input i1, i2 
);

//General assignment -- First declare then assign
assign out = out1 ^ out2;

//Implicit Continous Assignment -- Assign while declaring
wire out1 = i1 & i2;

//Implicit Net Declaration -- No need to delacre the vars as wire, directly assign
assign out2 = i1 | i2;

endmodule