module tb;

wire out;
reg i0,i1,i2,i3;
reg s1,s0;

mux m1(.OUT(out), .I0(i0), .I1(i1), .I2(i2), .I3(i3), .S0(s0), .S1(s1));

initial begin

    i0 = 1; i1 = 0; i2 = 0; i3 = 1;

    $display("I0 = %B, I1 = %B, I2 = %B, I3 = %B: \n", i0, i1, i2, i3);

    $monitor("%2t Select: {S1S0} = %B%b -- OUTPUT: %B",
    $time, s1, s0, out
    );

    
    
    s1 = 0; s0 = 0;

    #5 s1 = 0; s0 = 1;
    
    #5 s1 = 1; s0 = 0;
 
    #5 s1 = 1; s0 = 1;

end

endmodule