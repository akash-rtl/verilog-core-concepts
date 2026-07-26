module d_ff(
    input d, clr, clk,
    output reg q
);   


always @(negedge clk or posedge clr) begin
    if (clr == 1)
        q <= 1'b0;
    else
        q <= d;
end

endmodule