## 4-Bit Ripple Carry Adder
A Verilog implementation of a 4-bit Ripple Carry Adder (RCA) using gate-level abstraction. This project demonstrates structural modeling and verification using testbench.

### Architecture
The design consists of four 1-bit Full Adders (FA) connected in series. The carry output of each stage is "rippled" to the carry input of the next stage.
![1bit_fulladder](images/fadder.png)
![4bit_fulladder](images/4bitfadder.png)


### Simulation Output:
```
4-bit Full Adder: 

 0 --- Input: [X = 0001 | Y = 0101] 
Output: [ Sum = 0110 | Carry = 0 ]

 5 --- Input: [X = 1010 | Y = 1111] 
Output: [ Sum = 1001 | Carry = 1 ]

10 --- Input: [X = 0001 | Y = 0011] 
Output: [ Sum = 0100 | Carry = 0 ]

15 --- Input: [X = 1111 | Y = 1111] 
Output: [ Sum = 1110 | Carry = 1 ]
```
### Simulation Waveform
![Waveform](images/waveform.png)

### Tools Used:
- Simulator: Icarus Verilog

- Waveform Viewer: GTKWave

- Ciruit Design: Logisim


### Future
- Automated verification using a self-checking testbench
- Implement Dataflow Modeling version
- Implement Behavioral Modeling version
- Compare different abstraction styles