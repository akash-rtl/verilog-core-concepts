# Sequential BLock:
- An important point to note is that if these assignments were not executed within a sequential block, a race condition would occur.

### Verilog Implementation:
```Verilog
initial begin
    x = 1'b0;
    y = 1'b1;
    z = {x,y};
    w = {y,x};
end
```
