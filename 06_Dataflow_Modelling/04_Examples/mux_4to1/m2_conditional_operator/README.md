# 4:1 Multiplexer - Based on Conditional Operator:

### Verilog Implementation:
```
assign out = s1 ? (s0 ? i3 : i2) : ( s0 ? i1 : i0);
```

### Simulation Output:
```
 0 i = 1011 -- s1s0 = xx -- OUTPUT = x 
 5 i = 1011 -- s1s0 = 00 -- OUTPUT = 1 
10 i = 1011 -- s1s0 = 01 -- OUTPUT = 1 
15 i = 1011 -- s1s0 = 10 -- OUTPUT = 0 
20 i = 1011 -- s1s0 = 11 -- OUTPUT = 1
```