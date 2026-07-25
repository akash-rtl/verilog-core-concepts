# Traffic Signal Controller:

- Problem Staement:
```
Samir Palnitkar's Verilog HDL involves designing an FSM-based traffic signal controller for an intersection between a major highway and a country road, where the highway light remains green by default due to high traffic volume. A sensor on the country road outputs a signal (X=1) when a car is waiting, which triggers the controller to transition the highway light from green to yellow to red, subsequently turning the country road light green. The country road light stays green as long as cars are detected, but once the sensor clears (X=0), it cycles through yellow to red, safely returning the green right-of-way back to the highway using hardcoded timing delays for each state transition.
```

### Future Upgrades:
- A clock signal mismatch can be seen in the output, it is mainly due to using Non-Synthesizable code.
- Benefits of using Synthesizable Code: (Response from Claude AI)
```
Yes — completely. The synthesizable counter-based version doesn't just avoid the synthesis problem, it also eliminates the exact timing bug you just found, and for a very clean reason: there's no "waking up late" anymore.

Why the bug disappears

In your current version, the S1/S2/S4 branches sleep through several clock edges via repeat(...) @(posedge clk), then check state again once they wake up — by which point state may be stale relative to how many edges actually passed. The bug comes from the process being suspended and re-checking things after the fact.

The counter version never suspends. Every single clock edge, the block runs exactly once, evaluates state and count as they are right now, and decides the next value. There's no "go to sleep for N edges and hope things line up" — there's just "am I done counting yet?" checked fresh, every cycle, with no possibility of missing or double-counting an edge.
```

### Verilog Implementation:
- Pls Check the code.
### Simulation Output:
```
   0 -- main_sig = x -- cntry_sig = x || car_on_cntry_rd = 0 || reset = 1
   5 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 1
  50 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
 200 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 215 -- main_sig = 2 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 255 -- main_sig = 1 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 325 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 1 || reset = 0
 400 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 0 || reset = 0
 415 -- main_sig = 1 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
 465 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
 600 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 615 -- main_sig = 2 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 655 -- main_sig = 1 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
 725 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 1 || reset = 0
 800 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 0 || reset = 0
 815 -- main_sig = 1 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
 865 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
1000 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
1015 -- main_sig = 2 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
1055 -- main_sig = 1 -- cntry_sig = 1 || car_on_cntry_rd = 1 || reset = 0
1125 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 1 || reset = 0
1200 -- main_sig = 1 -- cntry_sig = 3 || car_on_cntry_rd = 0 || reset = 0
1215 -- main_sig = 1 -- cntry_sig = 2 || car_on_cntry_rd = 0 || reset = 0
1265 -- main_sig = 3 -- cntry_sig = 1 || car_on_cntry_rd = 0 || reset = 0
tb_src.v:59: $finish called at 1700 (1s)
```