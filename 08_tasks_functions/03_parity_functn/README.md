# Parity Generator:
- A 5-bit even parity generator implemented in Verilog. 
- It utilizes a custom function and a reduction XOR operator to calculate the parity bit for basic error detection.

### Verilog Implementation:
```verilog
always @(data) begin
    parity = calc_parity(data);
end

function calc_parity(
    input [4:0] data
);
    begin
    calc_parity = ^data;
    end    
endfunction
```

### Simulation Output:
```
Data = 01100 -- Parity = 0
Data = 10010 -- Parity = 0
Data = 11111 -- Parity = 1
Data = 00011 -- Parity = 0
Data = 00111 -- Parity = 1
Data = 10011 -- Parity = 1
```