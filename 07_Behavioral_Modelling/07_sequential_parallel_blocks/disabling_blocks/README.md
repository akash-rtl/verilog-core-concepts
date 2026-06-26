# Disabling Named Blocks:


### Verilog Implementation:
```Verilog
initial begin

    flag = 16'b0000_0100_0000_0000;

    begin: block1
        while (i < 16) begin
            if(flag[i] == 1'b1) begin 
                $display("Encountered TRUE bit on sequence number: %1d", i);
                disable block1;
            end
            i += 1;
        end
    end
end
```

### Simulation Output:
```
Encountered TRUE bit on sequence number: 10
```