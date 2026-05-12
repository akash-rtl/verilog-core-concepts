## Predefined Primitive Gates

Instantiation of Verilog predefined primitive gates for different input combinations.

### Two-Input Gates
- AND
- OR
- XOR
- NAND
- NOR
- XNOR

### Unary / Controlled Gates
- BUF
- NOT
- BUFIF1
- NOTIF0


### Console Output:
``` 

T = 0
 [i1 = 1, i2 = 0]
 AND = 0  OR = 1  XOR = 1  NAND = 1  NOR = 0  XNOR = 0 

 [i3 = 0 & Control = 0]
 BUF = 0 NOT = 1 BUFIF1 = z NOTIF0 = 1 


T = 10
 [i1 = 1, i2 = 1]
 AND = 1  OR = 1  XOR = 0  NAND = 0  NOR = 0  XNOR = 1 

 [i3 = 1 & Control = 0]
 BUF = 1 NOT = 0 BUFIF1 = z NOTIF0 = 0 


T = 20
 [i1 = 0, i2 = 0]
 AND = 0  OR = 0  XOR = 0  NAND = 1  NOR = 1  XNOR = 1 

 [i3 = 1 & Control = 1]
 BUF = 1 NOT = 0 BUFIF1 = 1 NOTIF0 = z 

```