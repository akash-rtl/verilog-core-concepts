# Contious Assignment:
- The assignment statement is used to assign wire/net, which is always active.
- LHS must always be net (bit/vector/concatenation anything)

### Verilog Implementation:
```verilog
//General assignment -- First declare then assign
wire out;
assign out = out1 ^ out2;

//Implicit Continous Assignment -- Assign while declaring
wire out1 = i1 & i2;

//Implicit Net Declaration -- No need to delacre the vars as wire, directly assign
assign out2 = i1 | i2;

```

### Simulation Output:
```
 0 -- [i1 = x | i2 = x] -- OUTPUT = x 
 5 -- [i1 = 0 | i2 = 0] -- OUTPUT = 0 
10 -- [i1 = 0 | i2 = 1] -- OUTPUT = 1 
15 -- [i1 = 1 | i2 = 0] -- OUTPUT = 1 
20 -- [i1 = 1 | i2 = 1] -- OUTPUT = 0
```
