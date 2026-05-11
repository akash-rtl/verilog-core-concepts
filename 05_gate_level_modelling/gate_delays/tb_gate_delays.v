module tb;

wire [5:0]out;
reg i1,i2,ctrl;

delays uut(out,i1,i2,ctrl);

initial begin
    $dumpfile("tb_gate_delays.vcd");
    $dumpvars(0,tb);

    i1 = 1; i2 = 0; ctrl = 0;

    #5 i1 = 1; i2 = 0; ctrl = 0;

    #5 i1 = 1; i2 = 1; ctrl = 0;

    #10 i1 = 0; i2 = 0; ctrl = 1;

    #5 $finish;



end


endmodule