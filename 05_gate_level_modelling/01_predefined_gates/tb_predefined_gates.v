module tb;

reg i1, i2, i3, ctrl;
wire [9:0]out;

basic_gates uut(.OUT(out), .I1(i1), .I2(i2), .I3(i3), .ctrl(ctrl));

initial begin
    //$display("Output in sequence: and or xor nand nor xnor:");
    $monitor(
        "\nT = %0t\n [i1 = %b, i2 = %b]\n AND = %b  OR = %b  XOR = %b  NAND = %b  NOR = %b  XNOR = %b \n\n [i3 = %b & Control = %b]\n BUF = %b NOT = %B BUFIF1 = %B NOTIF0 = %B \n",
        $time, i1, i2, out[0], out[1], out[2], out[3], out[4], out[5],
        i3, ctrl, out[6], out[7], out[8], out[9]
    );
    
    i1 = 1; i2 = 0; i3 = 0; ctrl = 0;

    #10 i1 = 1; i2 = 1; i3 = 1; ctrl = 0;

    #10 i1 = 0; i2 = 0; i3 = 1; ctrl = 1;

    
end

endmodule