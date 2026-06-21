# Named Blocks:


### Verilog Implementation:
```
initial begin: block1
    reg x,y;
    reg [1:0] z,w;  
    
    x = 1'b0;
    #5 y = 1'b1;
    #10 z = {x,y};
    #15 w = {y,x};
end
```
