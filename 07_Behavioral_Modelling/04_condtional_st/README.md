# Conditional Statements:
```
if (expression) true_statement;

if (expression) true_statement; else false_statement; 

if (expression) true_statement; else if (expression) true_statement_2;
else false_statement;
```


### Verilog Implementation:
```
always @(*) begin
    if (alu_control == 0)
    y = x + z;
    else if (alu_control == 1)
    y = x - z;
    else if (alu_control == 2)
    y = x * z;
    else 
    $display("Invalid ALU Control Signal");
end
```

### Simulation Output:
```
 0 -- alu_control = x -- [ x = x | z = x ] -- y = xx 
 5 -- alu_control = 0 -- [ x = 1 | z = 1 ] -- y = 10 
10 -- alu_control = 1 -- [ x = 0 | z = 1 ] -- y = 11 
15 -- alu_control = 1 -- [ x = 1 | z = 1 ] -- y = 00 
20 -- alu_control = 2 -- [ x = 1 | z = 1 ] -- y = 01 
25 -- alu_control = 1 -- [ x = 0 | z = 0 ] -- y = 00 
```
