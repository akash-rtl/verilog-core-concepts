### Problem Statement:
- Using the for loop, initialize locations 0 to 1023 of a 4-bit register array cache_var to 0.



### Verilog Implementation:
```Verilog
reg [3:0] cache_var [0:1023];
integer i = 0;
initial begin
    for(i = 0; i < 1024; i = i + 1) begin
            cache_var[i] = 4'b0000;
    end
end
```
