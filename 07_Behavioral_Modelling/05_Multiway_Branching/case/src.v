module main(
input [2:0] alu_control,
output reg [1:0] out,
input a,b
);


always @(*) begin
case (alu_control)
    3'b000 : out = a + b;
    3'b001 : out = a - b;
    3'b010 : out = a * b;

    default: $display("Invalid ALU control signal");

endcase
end

endmodule