module tb;

wire [3:0] out;
wire c_out;
reg [3:0] i1, i2;
reg c_in;

fulladder uut(out, c_out, i1, i2, c_in);


initial begin
    // $dumpfile("tb_src.vcd");
    // $dumpvars(0,tb);

    $monitor("%2t [i1 = %b | i2 = %b ] -- [SUM = %b | Carry = %b] ", $time, i1, i2, out, c_out);

    c_in = 0;

    i1 = 3; i2 = 5;
    #5 i1 = 15; i2 = 15;
    #5 i1 = 4; i2 = 12;
    #5 i1 = 5; i2 = 5;
    #5 i1 = 1; i2 = 8;


    #5 $finish;

end

endmodule