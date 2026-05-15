## SOP Expression executed:
```
 sum = a.b.c_in + a`.b`.c_in + a`.b.c_in` + a.b`.c_in`
 c_out = ab + bc_in + ac_in
```

## Simulation OUTPUT:
```
 0 -- [a = 0 | b = 0 | c_in = 0] -- [Sum = 0 | Carry = 0]
 5 -- [a = 0 | b = 0 | c_in = 1] -- [Sum = 1 | Carry = 0]
10 -- [a = 0 | b = 1 | c_in = 0] -- [Sum = 1 | Carry = 0]
15 -- [a = 0 | b = 1 | c_in = 1] -- [Sum = 0 | Carry = 1]
20 -- [a = 1 | b = 0 | c_in = 0] -- [Sum = 1 | Carry = 0]
25 -- [a = 1 | b = 0 | c_in = 1] -- [Sum = 0 | Carry = 1]
30 -- [a = 1 | b = 1 | c_in = 0] -- [Sum = 0 | Carry = 1]
35 -- [a = 1 | b = 1 | c_in = 1] -- [Sum = 1 | Carry = 1]
```