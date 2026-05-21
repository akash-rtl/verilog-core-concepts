# Full Subtractor:

### Verilog Implementation:
```
assign {borrow, diff} = ((x - y) - (b_in));
```

### Simulation Output:
```
 0 -- x = x | y = x | b_in = x || borrow = x | diff = x
 5 -- x = 0 | y = 0 | b_in = 0 || borrow = 0 | diff = 0
10 -- x = 0 | y = 0 | b_in = 1 || borrow = 1 | diff = 1
15 -- x = 0 | y = 1 | b_in = 0 || borrow = 1 | diff = 1
20 -- x = 0 | y = 1 | b_in = 1 || borrow = 1 | diff = 0
25 -- x = 1 | y = 0 | b_in = 0 || borrow = 0 | diff = 1
30 -- x = 1 | y = 0 | b_in = 1 || borrow = 0 | diff = 0
35 -- x = 1 | y = 1 | b_in = 0 || borrow = 0 | diff = 0
40 -- x = 1 | y = 1 | b_in = 1 || borrow = 1 | diff = 1
```
