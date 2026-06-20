# Sequential BLock:
- An important point to note is that if these assignments were not executed within a sequential block, a race condition would occur

### Verilog Implementation:
```
initial begin
    x = 'b0;
    y = 'b1;
    z = {x,y};
    w = {y,x};
end
```
