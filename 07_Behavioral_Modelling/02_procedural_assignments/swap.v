module swap;

reg clock = 0;

always 
    #10 clock = ~clock;

//Non-Blocking Assignment

reg a = 0;
reg b = 1;

always @(posedge clock) begin
    a <= b;
end
always @(posedge clock) begin
    b <= a;
end

initial begin
    $dumpfile("tb_swap.vcd");
    $dumpvars(0,swap);


    #100 $finish;
end


endmodule


/*
RACE CONDITION: at <Blocking Assignment>
always @(posedge clock) begin
    a = b;
end
always @(posedge clock) begin
    b = a;
end
*/