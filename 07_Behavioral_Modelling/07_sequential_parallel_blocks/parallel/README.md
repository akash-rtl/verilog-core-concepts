# Parallel Block:
- In this parallel block it is must to add the delays to avoid the 'Race Condition'.


### Verilog Implementation:
```Verilog
initial begin
    x = 1'b0;
    #5 y = 1'b1;
    #10 z = {x,y};
    #15 w = {y,x};
end
```
