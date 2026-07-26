### Problem Statement:
- Design a level-sensitive latch using wait statement that takes clock and d as inputs and q as output. 
- q = d whenever clock = 1.

### Verilog Implementation:
```verilog
always @(clk or d) begin
    wait(clk == 1); 
    q = d;
end
```



