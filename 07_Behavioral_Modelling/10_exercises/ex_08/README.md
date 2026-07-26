### Problem Statement:
- Design a negative edge trigerred D-flipflop. 
- With high active asynchronous clear.

### Verilog Implementation:
```verilog
always @(negedge clk or posedge clr) begin
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
65 || D = 1 -- Clear = 1 || Q = 0
85 || D = 0 -- Clear = 0 || Q = 0
tb_src.v:23: $finish called at 115 (1s)
```