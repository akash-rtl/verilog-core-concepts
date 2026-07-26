### Problem Statement:
- Design a negative edge trigerred D-flipflop. With high active synchronous clear.

### Verilog Implementation:
```verilog
always @(negedge clk) begin
    if (clr == 1)
        q <= 1'b0;
    else
        q <= d;
end
```

### Simulation Output:
```
 0 || D = 1 -- Clear = 1 || Q = 0
15 || D = 1 -- Clear = 0 || Q = 0
20 || D = 1 -- Clear = 0 || Q = 1
65 || D = 1 -- Clear = 1 || Q = 1
70 || D = 1 -- Clear = 1 || Q = 0
85 || D = 0 -- Clear = 0 || Q = 0
tb_src.v:25: $finish called at 115 (1s)
```