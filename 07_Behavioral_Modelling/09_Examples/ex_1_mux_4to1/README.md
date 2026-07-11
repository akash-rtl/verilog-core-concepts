# 4to1 MUX:


### Verilog Implementation:
```Verilog
always @(*) begin

case (s)
    2'b00: out = i[0];
    2'b01: out = i[1];
    2'b10: out = i[2];
    2'b11: out = i[3];

    default: out = 1'bx;
endcase
end
```

### Simulation Output:
```
 0 -- bus = 1100 | select = xx | output = x
 5 -- bus = 1100 | select = 00 | output = 0
10 -- bus = 1100 | select = 01 | output = 0
15 -- bus = 1100 | select = 10 | output = 1
20 -- bus = 1100 | select = 11 | output = 1
```