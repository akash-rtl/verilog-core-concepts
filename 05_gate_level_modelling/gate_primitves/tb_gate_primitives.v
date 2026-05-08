module tb;

reg i1, i2;
wire [5:0]out;

basic_gates uut(.OUT(out), .I1(i1), .I2(i2), .I3(1'b0));

initial begin
    $display("Output in sequence: and or xor nand nor xnor:");
    $monitor(
        "%4t | i1 = %b, i2 = %b | AND = %b  OR = %b  XOR = %b  NAND = %b  NOR = %b  XNOR = %b ",
        $time, i1, i2, out[0], out[0], out[0], out[0], out[0], out[0]
    );
    
    i1 = 1; i2 = 0;

    #10 i1 = 1; i2 = 1;

    
end

endmodule