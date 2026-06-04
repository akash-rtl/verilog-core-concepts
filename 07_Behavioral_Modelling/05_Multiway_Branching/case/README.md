# Case Statement:
```
Syntax: 

case (expression)
	alternative1 : statement1;
	alternative2 : statement2;
	alternative3 : statement3;
	...
	...
	default: default_statement;
endcase
```
### Verilog Implementation:
```
always @(*) begin
case (alu_control)
    3'b000 : out = a + b;
    3'b001 : out = a - b;
    3'b010 : out = a * b;

    default: $display("Invalid ALU control signal");

endcase
end
```

### Simulation Output:
```
 0 -- alu_control = x -- [ x = x | y = x ] -- out = xx 
 5 -- alu_control = 0 -- [ x = 1 | y = 1 ] -- out = 10 
10 -- alu_control = 1 -- [ x = 0 | y = 1 ] -- out = 11 
15 -- alu_control = 1 -- [ x = 1 | y = 1 ] -- out = 00 
20 -- alu_control = 2 -- [ x = 1 | y = 1 ] -- out = 01 
25 -- alu_control = 1 -- [ x = 0 | y = 0 ] -- out = 00 
Invalid ALU control signal
30 -- alu_control = 5 -- [ x = 0 | y = 0 ] -- out = 00
```