# Magnitude Comparator:

### Verilog Implementation:
```
wire a3, a2, a1, a0, b3, b2,b1,b0;
wire a_3,a_2,a_1,a_0,b_3,b_2,b_1,b_0;

assign {a3,a2,a1,a0} = a;
assign {b3,b2,b1,b0} = b;
assign {a_3,a_2,a_1,a_0} = ~a;
assign {b_3,b_2,b_1,b_0} = ~b;


assign a_gt_b = (a3 & b_3) |
                (a3 ~^ b3) & (a2 & b_2) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 & b_1) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) &(a0 & b_0)
                ;

assign a_lt_b = (a_3 & b3) |
                (a3 ~^ b3) & (a_2 & b2) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a_1 & b1) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) &(a_0 & b0)
                ;

assign a_eq_b = (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 ~^ b0);
```

### 2nd Method -- Dataflow Modelling:
```
assign a_gt_b = (a > b);
assign a_lt_b = (a < b);
assign a_eq_b = (a == b);
```


### Simulation Output:
```
 0 -- [ A = xxxx | B = xxxx ] -- a_gt_b = x | a_lt_b = x | a_eq_b = x
 5 -- [ A = 0101 | B = 0101 ] -- a_gt_b = 0 | a_lt_b = 0 | a_eq_b = 1
10 -- [ A = 1111 | B = 1110 ] -- a_gt_b = 1 | a_lt_b = 0 | a_eq_b = 0
15 -- [ A = 0111 | B = 0010 ] -- a_gt_b = 1 | a_lt_b = 0 | a_eq_b = 0
20 -- [ A = 0001 | B = 0101 ] -- a_gt_b = 0 | a_lt_b = 1 | a_eq_b = 0
25 -- [ A = 1011 | B = 0011 ] -- a_gt_b = 1 | a_lt_b = 0 | a_eq_b = 0
```

