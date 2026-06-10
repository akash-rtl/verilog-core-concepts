# Forever Loop:

### Verilog Implementation
```
initial begin
    clock = 0;

    forever #10 clock = ~clock;
end
```

### Simulation Output:
```
 0 -- Clock = 0
10 -- Clock = 1
20 -- Clock = 0
30 -- Clock = 1
40 -- Clock = 0
50 -- Clock = 1
60 -- Clock = 0
70 -- Clock = 1
80 -- Clock = 0
90 -- Clock = 1
```