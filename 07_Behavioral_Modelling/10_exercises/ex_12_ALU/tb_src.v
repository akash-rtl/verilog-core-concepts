module tb;

    wire [4:0] out;
    reg [3:0] a,b;
    reg [2:0] select;

ALU uut(out, a, b, select);

initial begin
    
    $monitor("%2t || a = %b -- b = %b || select = %b || out = %b", $time, a, b, select, out);

    a = 4'b1100; b = 4'b1001;

    select = 0;
    #5 select = 1;
    #5 select = 2;
    #5 select = 3;
    #5 select = 4;
    #5 select = 5;
    #5 select = 6;
    #5 select = 7;
    

    #10 $finish;
end

endmodule