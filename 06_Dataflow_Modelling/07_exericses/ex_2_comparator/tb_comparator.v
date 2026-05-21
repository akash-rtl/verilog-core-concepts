module tb;

wire a_gt_b, a_lt_b, a_eq_b;
reg [3:0] a,b;

comparator uut(a,b, a_gt_b, a_lt_b, a_eq_b);

initial begin
    $monitor("%2t -- [ A = %b | B = %B ] -- a_gt_b = %b | a_lt_b = %b | a_eq_b = %b", $time, a,b, a_gt_b, a_lt_b, a_eq_b);

    #5 a = 5; b = 5;
    #5 a = 15; b = 14;
    #5 a = 7; b = 2;
    #5 a = 1; b = 5;
    #5 a = 11; b = 3;
    
    #5 $finish;

end

endmodule