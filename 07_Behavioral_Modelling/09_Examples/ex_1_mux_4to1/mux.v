module mux(
    input [1:0] s,
    input [3:0] i,
    output reg out
);

always @(*) begin

case (s)
    2'b00: out = i[0];
    2'b01: out = i[1];
    2'b10: out = i[2];
    2'b11: out = i[3];

    default: out = 1'bx;
endcase
end

endmodule
