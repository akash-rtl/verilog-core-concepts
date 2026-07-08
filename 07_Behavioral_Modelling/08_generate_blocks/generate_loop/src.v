module fa(
    output out, c_out,
    input a, b, c_in
);
assign {c_out, out} = a + b + c_in;

endmodule


module ripple_fa #(
    parameter width = 4
)(
    input [width-1:0] a,b,
    output [width-1:0] out,
    input c_in,
    output c_out
);

wire [width:0] carry;

assign c_out = carry[width];
assign carry[0] = c_in;

genvar i;
generate
    for(i = 0; i < width; i = i + 1) begin: fa_
        fa uut(.out(out[i]), .c_out(carry[i+1]), .a(a[i]), .b(b[i]), .c_in(carry[i]));
    end
endgenerate

endmodule



// ------------------------------------------------------ Illeagal
// initial begin

// for (i = 0; i < width; i++) begin
//     fa uut(.out(out[i]), .c_out(carry[i+1]), .a(a[i]), .b(b[i]), .c_in(carry[i]));
// end

// end




// fa uut(.out(out), .c_out(cout), .a(a), .b(b), .c_in(cin));


