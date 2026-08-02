module tb;

wire [6:0] xor_ab, xor_cd;
reg [6:0] a,b,c,d;

main uut(a,b,c,d, xor_ab, xor_cd);



initial begin
//     $dumpfile("tb_src.vcd");
//     $dumpvars(0,tb);

    $monitor("%2t -- [a = %b | b = %b | c = %b | d = %b] -- XOR_AB = %b | XOR_CD = %b ", $time, a,b,c,d,xor_ab,xor_cd) ;

    a = 14; b = 123; c = 88; d = 14;
    #50 a = 4; b = 123; c = 18; d = 44;
    #50 a = 14; b = 23; c = 8; d = 14;
    
    #100 $finish;

end

endmodule