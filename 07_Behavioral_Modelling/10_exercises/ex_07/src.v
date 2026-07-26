module d_ff(
    input d, clr, clk,
    output reg q
);   


always @(negedge clk) begin
    if (clr == 1)
        q <= 1'b0;
    else
        q <= d;
end

endmodule