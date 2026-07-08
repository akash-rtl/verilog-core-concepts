module tb #(parameter width = 4);

wire [width-1: 0] out;
wire c_out;

reg [width-1: 0] a,b;
reg c_in;

ripple_fa uut(.out(out), .c_out(c_out), .a(a), .b(b), .c_in(c_in));

initial begin
    $monitor("%2t | Carry: %b -- Sum = %b -||- a = %b -- b = %b -- c_in = %b ", $time,  c_out, out, a, b, c_in);

    a = 12; b = 10; c_in = 0;
    #5 a = 5; b = 14; c_in = 1;
    #5 a = 6; b = 2; c_in = 0;
    #5 a = 0; b = 0; c_in = 0;
    #5 a = 15; b = 15; c_in = 1;
    #5 a = 15; b = 15; c_in = 0;
    #5 $finish;
end

endmodule
