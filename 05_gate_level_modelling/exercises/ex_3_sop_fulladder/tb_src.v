module tb;

reg a,b,c_in;
wire sum, c_out;

fulladder f0(sum, c_out, a, b, c_in);


initial begin

    $monitor("%2t -- [a = %b | b = %b | c_in = %b] -- [Sum = %b | Carry = %b]", $time, a,b,c_in,sum,c_out);

     a = 0; b = 0; c_in = 0;
    #5 a = 0; b = 0; c_in = 1;
    #5 a = 0; b = 1; c_in = 0;
    #5 a = 0; b = 1; c_in = 1;
    #5 a = 1; b = 0; c_in = 0;
    #5 a = 1; b = 0; c_in = 1;
    #5 a = 1; b = 1; c_in = 0;
    #5 a = 1; b = 1; c_in = 1;
end

endmodule