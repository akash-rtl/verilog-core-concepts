module tb;

wire [3:0] count;
reg clk, clr;

counter uut(.clr(clr), .clk(clk), .count(count));

always #10 clk = ~clk;

initial begin
    $monitor("%3t -- clr = %b --  Count = %b", $time, clr, count);

    clk = 0;
    clr = 1;

    #10 clr = 0;
    #250 clr = 1;
    #50 clr = 0;

    #360 $finish;
end


endmodule
