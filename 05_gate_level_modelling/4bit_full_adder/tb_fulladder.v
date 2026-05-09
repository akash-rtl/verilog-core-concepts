module tb;
    reg [3:0] X, Y;
    wire [3:0] OUT;
    wire C_OUT;

    fa_4bit uut(.out(OUT), .c_out(C_OUT), .x(X), .y(Y));

    initial begin
        $dumpfile("tb_fulladder.vcd");
        $dumpvars(0,tb);

        $display("4-bit Full Adder: \n");
        $monitor("%2t --- Input: [X = %b | Y = %B] \nOutput: [ Sum = %b | Carry = %b ]\n", $time, X, Y, OUT, C_OUT);

        X = 1; Y = 5;
        #5 X = 10; Y = 15;
        #5 X = 1; Y = 3;
        #5 X = 15; Y = 15;

        #5 $finish;
    end

endmodule