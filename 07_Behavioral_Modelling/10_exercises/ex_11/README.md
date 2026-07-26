### Problem Statement:
- Just like the Traffic Signal Controller designed in Examples using FSMs, design it here using if-else statements.

### Verilog Implementation:
```verilog
always @(negedge clk) begin
    
    if (reset)begin
        highway_signal = green;
        country_signal = red;
    end
    
    else if (X) begin 
        highway_signal = yellow;
        
        #5 highway_signal = red;
        
        #5 country_signal = green;
        
        
        wait (X==0);

        #5 country_signal = yellow;
        #5 country_signal = red;
        #5 highway_signal = green;
    end


    else if (X == 0) begin
        country_signal = red;
        highway_signal = green;    
    end
end
```

### Simulaition Output:
```
   0 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 1
  50 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
 200 -- main_sig = 1 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
 205 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
 210 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 1 || reset = 0
 400 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
 405 -- main_sig = 0 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
 410 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
 415 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
 600 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
 610 -- main_sig = 1 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
 615 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
 620 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 1 || reset = 0
 800 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
 805 -- main_sig = 0 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
 810 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
 815 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
1000 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
1010 -- main_sig = 1 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
1015 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 1 || reset = 0
1020 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 1 || reset = 0
1200 -- main_sig = 0 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
1205 -- main_sig = 0 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
1210 -- main_sig = 0 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
1215 -- main_sig = 2 -- cntry_sig = 0 || car_on_cntry_rd = 0 || reset = 0
tb_src.v:59: $finish called at 1700 (1s)
```