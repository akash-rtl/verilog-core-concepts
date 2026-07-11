module counter(
    output reg [3:0] count, 
    input clk, 
    input clr
);

always @(negedge clk or posedge clr) begin
    if (clr)
        count <= 0;
    else if (!clr)
        count <= count + 1;
end
 


endmodule
