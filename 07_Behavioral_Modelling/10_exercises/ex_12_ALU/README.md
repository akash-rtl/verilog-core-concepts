### Problem Statement:
- Given the Function for each select line, design an ALU.

### Verilog Implementation:
```verilog
always @(*) begin
    case(select)

    3'b000 : out = a;
    3'b001 : out = a + b;
    3'b010 : out = a - b;
    3'b011 : out = a / b;
    3'b100 : out = a % b;
    3'b101 : out = a << 1;
    3'b110 : out = a >> 1;
    3'b111 : out = (a > b);


    default: $display("Wrong Select Line: ");
    endcase
end
```


### Simulation Output:
```
 0 || a = 1100 -- b = 1001 || select = 000 || out = 01100
 5 || a = 1100 -- b = 1001 || select = 001 || out = 10101
10 || a = 1100 -- b = 1001 || select = 010 || out = 00011
15 || a = 1100 -- b = 1001 || select = 011 || out = 00001
20 || a = 1100 -- b = 1001 || select = 100 || out = 00011
25 || a = 1100 -- b = 1001 || select = 101 || out = 11000
30 || a = 1100 -- b = 1001 || select = 110 || out = 00110
35 || a = 1100 -- b = 1001 || select = 111 || out = 00001
tb_src.v:25: $finish called at 45 (1s)
```