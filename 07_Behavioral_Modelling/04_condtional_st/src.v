module main(
    output reg [1:0] y, 
    input [2:0]alu_control,
    input x,z
);

always @(*) begin
    if (alu_control == 0)
    y = x + z;
    else if (alu_control == 1)
    y = x - z;
    else if (alu_control == 2)
    y = x * z;
    else 
    $display("Invalid ALU Control Signal");
end

endmodule