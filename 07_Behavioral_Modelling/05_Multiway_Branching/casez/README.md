# casex or casez:

- casez: Treats  all 'z' values in the case alternatives/expressions as dont cares.
- casex: Treats  all 'z' and 'x' values in the case alternatives/expressions as dont cares.
- Only non-x or non-z positions are allowed in comparison of expression and alternatives


### Verilog Implementation:
```
casex (encoding)
    4'b1xxx : next_state = 3;
    4'bx1xx : next_state = 2;
    4'bxx1x : next_state = 1;
    4'bxxx1 : next_state = 0;
    default : next_state = 0;
endcase
```

### Simulation Output:
```
*will be updated later*
```
