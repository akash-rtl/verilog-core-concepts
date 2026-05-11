module tb;

reg A, B;
wire [2:0] OUT;

my_or gt1 (OUT[0], A, B);
my_and gt2 (OUT[1], A, B);
my_not gt3 (OUT[2], A);

initial begin
    
    $monitor("%2t -- Input [I1 = %B | I2 = %B] \nOR = %b -- AND = %B -- NOT = %B",$time, A, B, OUT[0], OUT[1], OUT[2]);

    #0 A = 0; B = 0;
    #5 A = 0; B = 1;
    #5 A = 1; B = 0;
    #5 A = 1; B = 1;

    #5 $finish;



end



endmodule