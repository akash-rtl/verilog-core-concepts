## SR Latch
### Description
This repository contains the RTL implementation and functional verification of a cross-coupled NAND-based Set-Reset (SR) Latch. The project demonstrates fundamental sequential logic design, gate-level modeling, and simulation-based verification using Icarus Verilog and GTKWave.
### Waveform
![sr_latch-waveform](images/waveform.png)
### Output
```
                   0 -- S = 0 -- R = 1 -- Q = 0 -- Qbar = 1
                  10 -- S = 0 -- R = 0 -- Q = 0 -- Qbar = 1
                  20 -- S = 1 -- R = 0 -- Q = 1 -- Qbar = 0
                  30 -- S = 0 -- R = 0 -- Q = 1 -- Qbar = 0
```