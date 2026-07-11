# 43-it Counter:

### Verilog Implementation:
```verilog
always @(negedge clk or posedge clr) begin
    if (clr)
        count <= 0;
    else if (!clr)
        count <= count + 1;
end

```

### Simulation Output:
```
  0 -- clr = 1 --  Count = 0000
 10 -- clr = 0 --  Count = 0000
 20 -- clr = 0 --  Count = 0001
 40 -- clr = 0 --  Count = 0010
 60 -- clr = 0 --  Count = 0011
 80 -- clr = 0 --  Count = 0100
100 -- clr = 0 --  Count = 0101
120 -- clr = 0 --  Count = 0110
140 -- clr = 0 --  Count = 0111
160 -- clr = 0 --  Count = 1000
180 -- clr = 0 --  Count = 1001
200 -- clr = 0 --  Count = 1010
220 -- clr = 0 --  Count = 1011
240 -- clr = 0 --  Count = 1100
260 -- clr = 1 --  Count = 0000
310 -- clr = 0 --  Count = 0000
320 -- clr = 0 --  Count = 0001
340 -- clr = 0 --  Count = 0010
360 -- clr = 0 --  Count = 0011
380 -- clr = 0 --  Count = 0100
400 -- clr = 0 --  Count = 0101
420 -- clr = 0 --  Count = 0110
440 -- clr = 0 --  Count = 0111
460 -- clr = 0 --  Count = 1000
480 -- clr = 0 --  Count = 1001
500 -- clr = 0 --  Count = 1010
520 -- clr = 0 --  Count = 1011
540 -- clr = 0 --  Count = 1100
560 -- clr = 0 --  Count = 1101
580 -- clr = 0 --  Count = 1110
600 -- clr = 0 --  Count = 1111
620 -- clr = 0 --  Count = 0000
640 -- clr = 0 --  Count = 0001
660 -- clr = 0 --  Count = 0010
```