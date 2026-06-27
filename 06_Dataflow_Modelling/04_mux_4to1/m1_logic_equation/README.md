# 4:1 Multiplexer - Based on Logical Equation:

### Verilog Implementation:
```verilog
wire m0, m1, m2, m3;

assign m0 = i0 & ~s1 & ~s0;
assign m1 = i1 & ~s1 & s0;
assign m2 = i2 & s1 & ~s0;
assign m3 = i3 & s1 & s0;

assign out = m0 | m1 | m2 | m3;
```

### Simulation Output:
```verilog
 0 i = 1011 -- s1s0 = xx -- OUTPUT = x 
 5 i = 1011 -- s1s0 = 00 -- OUTPUT = 1 
10 i = 1011 -- s1s0 = 01 -- OUTPUT = 1 
15 i = 1011 -- s1s0 = 10 -- OUTPUT = 0 
20 i = 1011 -- s1s0 = 11 -- OUTPUT = 1 
```

### Waveform:
