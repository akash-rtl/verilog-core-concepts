module tb;

wire diff, borrow;
reg x,y,b_in;

subtractor uut(diff, borrow, x, y, b_in);

initial begin
    $monitor("%2t -- x = %b | y = %b | b_in = %B || borrow = %b | diff = %b", $time, x, y, b_in, borrow, diff);

    #5 x = 0; y = 0; b_in = 0;
    #5 x = 0; y = 0; b_in = 1;
    #5 x = 0; y = 1; b_in = 0;
    #5 x = 0; y = 1; b_in = 1;
    #5 x = 1; y = 0; b_in = 0;
    #5 x = 1; y = 0; b_in = 1;
    #5 x = 1; y = 1; b_in = 0;
    #5 x = 1; y = 1; b_in = 1;

    #5 $finish;
end


endmodule