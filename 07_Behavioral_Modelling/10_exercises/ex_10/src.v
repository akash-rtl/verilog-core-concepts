module main(
    input i0, i1, i2, i3,
    input s0, s1,
    output reg out
);   

always @(*) begin
    if({s1,s0} == 2'b00)
        out = i0;
    if({s1,s0} == 2'b01)
        out = i1;
    if({s1,s0} == 2'b10)
        out = i2;
    if({s1,s0} == 2'b11)
        out = i3;
end

endmodule