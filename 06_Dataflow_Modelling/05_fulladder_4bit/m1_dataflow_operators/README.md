# 4-Bit Ripple Carry Adder:

### Verilog Implementation:
```
assign {c_out, out} = i1 + i2 + c_in;
```

### Simulation Output:
```
 0 [i1 = 0011 | i2 = 0101 ] -- [SUM = 1000 | Carry = 0] 
 5 [i1 = 1111 | i2 = 1111 ] -- [SUM = 1110 | Carry = 1] 
10 [i1 = 0100 | i2 = 1100 ] -- [SUM = 0000 | Carry = 1] 
15 [i1 = 0101 | i2 = 0101 ] -- [SUM = 1010 | Carry = 0] 
20 [i1 = 0001 | i2 = 1000 ] -- [SUM = 1001 | Carry = 0] 
```

### Waveform: