module main(
    input [6:0] A, B, C, D,
    output reg [6:0] xor_ab, xor_cd
); 

reg clk_1, clk_2;

initial begin
    clk_1 = 0;
    clk_2 = 0;
end

always fork 
    #5 clk_1 = ~clk_1;
    #10 clk_2 = ~clk_2;
join




always @(posedge clk_1) begin
    xor_op(A,B, xor_ab);
end
always @(posedge clk_2) begin
    xor_op(C,D, xor_cd);
end


task automatic xor_op(
    input [6:0] i1, i2,
    output [6:0] out
);
begin 
    out = i1 ^ i2;
end 
endtask


endmodule

