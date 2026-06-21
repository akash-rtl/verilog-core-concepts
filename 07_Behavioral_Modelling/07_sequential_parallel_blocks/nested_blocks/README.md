# Nested Block:


### Verilog Implementation:
```
initial begin
    x = 1'b0;
    
    fork
        #5 y = 1'b1;
        #10 z = {x,y};
    join
    
    #15 w = {y,x};
end
```
