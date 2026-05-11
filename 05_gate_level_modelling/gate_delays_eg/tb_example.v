module tb;

reg A,B,C;
wire out;

example uut(OUT,A,B,C);

initial begin
    $dumpfile("tb_example.vcd");
    $dumpvars(0,tb);

    $monitor("\n%2t -- [A = %B B = %B, C = %B] -- OUT = %B", $time, A,B,C,OUT);

    #0 A = 0; B = 0; C = 0;

    #10 A = 1; B = 1; C = 1;

    #10 A = 1; B = 0; C = 0;

    #15 $finish;


end

endmodule