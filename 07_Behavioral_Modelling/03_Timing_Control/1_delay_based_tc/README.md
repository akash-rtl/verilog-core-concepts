# Delay Based Timing Control:

- Time duration between when the statement is encountered and when it is executed.
- Keyword "#"
- Can be specified by number, identifier(variable) or mintypmax expression

1. Regular Delay Control:
	`#(4:5:6) q = 0;`
	Delay is always relative to when the statement is encountered
2. Intra-assignment delay control:
	`y = #5 x + z`
	Here we apply the delay to RHS of operator. 
	The RHS expression is evaluated at the given time. And then after the delay value this expression is deferred to the LHS var.
	While in Regular Delay control entire expression gets a delay for execution
3. Zero Delay Control:
	Due to multiple initial-always block it is indeterministic to which of the statements will be executed in which order.
	So by this (#0) we can determine that particular statements in the blocks will be executed last.


### Verilog Implementation:
```

//Regular Delay Control ------------------------
    x= 0;
    #10 y = 1;
    #latency z = 0;
    #y x = x + 1;
    #(4:5:6) p = 0;

//Intra Assignment Dealy Control ------------------
    i = #7 x + z;
 


//Zero Delay Control --------------------
initial begin
    a = 0;
    b = 0;
end
initial begin
    #0 a = 1;
    #0 b = 1;
end
```

### Simulation Output:
```
 0 -- x = 0 | y = x | z = x | p = x | i = x | a = 1 | b = 1 | 
10 -- x = 0 | y = 1 | z = x | p = x | i = x | a = 1 | b = 1 | 
15 -- x = 0 | y = 1 | z = 0 | p = x | i = x | a = 1 | b = 1 | 
16 -- x = 1 | y = 1 | z = 0 | p = x | i = x | a = 1 | b = 1 | 
21 -- x = 1 | y = 1 | z = 0 | p = 0 | i = x | a = 1 | b = 1 | 
28 -- x = 1 | y = 1 | z = 0 | p = 0 | i = 1 | a = 1 | b = 1 | 
```
