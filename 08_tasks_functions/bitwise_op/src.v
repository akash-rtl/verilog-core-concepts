module main(
    input [6:0] A, B,
    output reg [6:0] out_or, out_xor, out_and
); 

always @(A or B) begin
    
    bitwise_operation(A,B, out_or, out_xor, out_and);

end

task bitwise_operation(
    input [6:0] i1, i2,
    output [6:0] i_or, i_xor, i_and 
);
begin 
    i_or = i1 | i2;
    i_xor = i1 ^ i2;
    i_and = i1 & i2;
end 
endtask


endmodule

