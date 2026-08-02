# Bitwise Operation using Tasks:

### Verilog Implementation:
```verilog
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
```

### Simulation Output:
```
 0 -- [i1 = xxxxxxx | i2 = xxxxxxx] -- OUT_OR = xxxxxxx | OUT_XOR = xxxxxxx | OUT_AND = xxxxxxx 
 5 -- [i1 = 0001110 | i2 = 1111011] -- OUT_OR = 1111111 | OUT_XOR = 1110101 | OUT_AND = 0001010 
10 -- [i1 = 0010110 | i2 = 0111000] -- OUT_OR = 0111110 | OUT_XOR = 0101110 | OUT_AND = 0010000 
15 -- [i1 = 0011111 | i2 = 0010111] -- OUT_OR = 0011111 | OUT_XOR = 0001000 | OUT_AND = 0010111 
20 -- [i1 = 0000001 | i2 = 0000001] -- OUT_OR = 0000001 | OUT_XOR = 0000000 | OUT_AND = 0000001
```
