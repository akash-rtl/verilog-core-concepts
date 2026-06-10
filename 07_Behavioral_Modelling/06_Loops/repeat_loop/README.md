# Repeat Loop:

### Verilog Implementation:
```
parameter count = 10;

initial begin
    repeat(count)
        $display("This text is printed %2d times!", count);
end
```

### Simulation Ouput:
```
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
This text is printed 10 times!
```