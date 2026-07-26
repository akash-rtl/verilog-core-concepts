module tb;

reg D, clock, clear;
wire Q;

initial begin
    clock = 1'b0;
    forever #5 clock = ~clock;
end

d_ff uut(.d(D), .q(Q), .clk(clock), .clr(clear));


initial begin
    $monitor("%2t || D = %b -- Clear = %b || Q = %b", $time, D, clear, Q);

    clear = 1; D = 1;

    repeat(2) @(posedge clock); clear = 0; D = 1;
    repeat(5) @(posedge clock); clear = 1; D = 1;
    repeat(2) @(posedge clock); clear = 0; D = 0;

    #30 $finish;
end


endmodule