### Problem Statement:
- Draw a 4-to-1 MUX using if-else statements

### Verilog Implementation:
```Verilog
always @(*) begin
    if({s1,s0} == 2'b00)
        out = i0;
    if({s1,s0} == 2'b01)
        out = i1;
    if({s1,s0} == 2'b10)
        out = i2;
    if({s1,s0} == 2'b11)
        out = i3;
end
```