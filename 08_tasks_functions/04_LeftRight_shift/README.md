# Left or Right Shift:

### Verilog Implementation:
```verilog
always @(data) begin
    out = shift(data,control);
end


function [5:0] shift(
    input [5:0] data,
    input control
);
begin
    if(control)
        shift = data >> 1;
    else if(!control)
        shift = data << 1;
end    
endfunction
```

### Simulation Output:
```
Control 1 --> Right Shift
Control 0 --> Left Shift
data = 111111 -- control = 0 -- Output = 111110
data = 101101 -- control = 0 -- Output = 011010
data = 010101 -- control = 0 -- Output = 101010
data = 001000 -- control = 1 -- Output = 000100
data = 000001 -- control = 1 -- Output = 000000
data = 110110 -- control = 1 -- Output = 011011
```