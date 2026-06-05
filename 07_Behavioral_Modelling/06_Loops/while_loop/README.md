# While Loop:
- Find the first bit with a value 1 in flag.


### Verilog Implementation:
```
initial begin
    flag = 16'b0010_0010_0000_0000;
    i = 0;
    continue = `TRUE;


    while( (i < 16) && continue) begin
        if(flag[i]) begin
            $display("Encountered a TRUE bit at a element number: %d ", i);
            continue = `FALSE
        end
        i += 1;
    end
end
```

### Simulation Output:
```
Encountered a TRUE bit at a element number:           9 
```