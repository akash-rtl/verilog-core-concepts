module tb;

wire OUT;
reg I0,I1,I2,I3;
reg S1,S0;

mux m1(.OUT(OUT), .I0(I0), .I1(I1), .I2(I2), .I3(I3), .S0(S0), .S1(S1));

initial begin
    $dumpfile("tb_mux_4to1.vcd");
    $dumpvars(0,tb);

    I0 = 1; I1 = 0; I2 = 0; I3 = 1;

    $display("Input Configuration:\n[I0 = %B, I1 = %B, I2 = %B, I3 = %B]: \n", I0, I1, I2, I3);

    $monitor("%2t Select: {S1S0} = %B%b -- OUTPUT: %B",
    $time, S1, S0, OUT
    );

    
    
    S1 = 0; S0 = 0;

    #5 S1 = 0; S0 = 1;
    
    #5 S1 = 1; S0 = 0;
 
    #5 S1 = 1; S0 = 1;

    #7 $finish;

end

endmodule