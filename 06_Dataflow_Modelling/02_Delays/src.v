`timescale 1ns / 100ps  // Unit is 1ns, Precision is 0.1ns (100ps)

module main(
    output out,
    input i1, i2
);

//Regular Assignment Delay
assign #2 out = s1 ^ s2; //xor


//Implicit Continous Assignment Delay
wire #1 s1 = i1 | i2;

//Net Declaration Delay -- Any operation when done on s2 -- will have a delay of given value
// wire #5 s2; --> Not supported in this version
wire s2;
assign #1 s2 = i1 & i2;


endmodule