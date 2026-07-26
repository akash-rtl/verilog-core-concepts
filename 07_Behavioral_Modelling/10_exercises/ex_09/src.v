module main(
    input clk, d,
    output reg q
);

always @(clk or d) begin
    wait(clk == 1); 
    q = d;
end


endmodule