## SR Latch (NAND-Based)
This project implements a basic SR Latch using NAND gates in Verilog.
The SR (Set-Reset) latch is one of the most fundamental sequential circuits, used to store a single bit of data.
This implementation uses active-low inputs (S̅ and R̅).
### Description
The latch is constructed using two cross-coupled NAND gates, forming a bistable circuit.
``` Truth Table (NAND SR Latch – Active Low)
S̅	R̅	 Q 	  Operation
0	1	1		Set
1	0	0		Reset
1	1	Hold	Q̅ prev	No Change
0	0	Invalid	Invalid	Forbidden
```
### Waveform
![sr_latch-waveform](images/waveform.png)
### Simulation Output
```
                   0 -- Sbar = 0 -- Rbar = 1 -- Q = 1 -- Qbar = 0
                  10 -- Sbar = 1 -- Rbar = 1 -- Q = 1 -- Qbar = 0
                  20 -- Sbar = 1 -- Rbar = 0 -- Q = 0 -- Qbar = 1
                  30 -- Sbar = 1 -- Rbar = 1 -- Q = 0 -- Qbar = 1
```
### Future Improvements
Add NOR-based SR latch for comparison
Extend to clocked SR Flip-Flop
Introduce D Flip-Flop using SR latch