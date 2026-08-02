# Bitwise XOR with different Clocks:

### Verilog Implementation:
```verilog
always @(posedge clk_1) begin
    xor_op(A,B, xor_ab);
end
always @(posedge clk_2) begin
    xor_op(C,D, xor_cd);
end


task automatic xor_op(
    input [6:0] i1, i2,
    output [6:0] out
);
begin 
    out = i1 ^ i2;
end 
endtask
```

### Simulation Output:
```
 0 -- [a = 0001110 | b = 1111011 | c = 1011000 | d = 0001110] -- XOR_AB = xxxxxxx | XOR_CD = xxxxxxx 
 5 -- [a = 0001110 | b = 1111011 | c = 1011000 | d = 0001110] -- XOR_AB = 1110101 | XOR_CD = xxxxxxx 
10 -- [a = 0001110 | b = 1111011 | c = 1011000 | d = 0001110] -- XOR_AB = 1110101 | XOR_CD = 1010110 
50 -- [a = 0000100 | b = 1111011 | c = 0010010 | d = 0101100] -- XOR_AB = 1110101 | XOR_CD = 0111110 
65 -- [a = 0000100 | b = 1111011 | c = 0010010 | d = 0101100] -- XOR_AB = 1111111 | XOR_CD = 0111110 
100 -- [a = 0001110 | b = 0010111 | c = 0001000 | d = 0001110] -- XOR_AB = 1111111 | XOR_CD = 0111110 
105 -- [a = 0001110 | b = 0010111 | c = 0001000 | d = 0001110] -- XOR_AB = 0011001 | XOR_CD = 0111110 
110 -- [a = 0001110 | b = 0010111 | c = 0001000 | d = 0001110] -- XOR_AB = 0011001 | XOR_CD = 0000110 
tb_src.v:20: $finish called at 200 (1s)
```
