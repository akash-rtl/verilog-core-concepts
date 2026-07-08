# Generate Blocks:

*will be updated soon *


### Verilog Implementation:
```Verilog 
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
```

### Simulation Output:
```
 0 | Carry: 1 -- Sum = 0110 -||- a = 1100 -- b = 1010 -- c_in = 0 
 5 | Carry: 1 -- Sum = 0100 -||- a = 0101 -- b = 1110 -- c_in = 1 
10 | Carry: 0 -- Sum = 1000 -||- a = 0110 -- b = 0010 -- c_in = 0 
15 | Carry: 0 -- Sum = 0000 -||- a = 0000 -- b = 0000 -- c_in = 0 
20 | Carry: 1 -- Sum = 1111 -||- a = 1111 -- b = 1111 -- c_in = 1 
25 | Carry: 1 -- Sum = 1110 -||- a = 1111 -- b = 1111 -- c_in = 0 
```