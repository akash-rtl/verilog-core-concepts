# 4:1 Multiplexer (Gate-Level Modeling)

This project implements a 4:1 Multiplexer in Verilog using Gate-Level Modeling.

The design is constructed using primitive logic gates such as:
- AND
- OR
- NOT

The objective of this implementation is to understand how combinational circuits can be built from basic logic gates and how select lines control data propagation in a multiplexer.

Future implementations of the same design will also explore:
- Dataflow Modeling
- Behavioral Modeling

---

## Truth Table

![Truth Table](images/truthtable.png)

---

## Circuit Design

![Circuit Design](images/digitaldesign.png)

---
## Simulation Output
```
Input Configuration:
[I0 = 1, I1 = 0, I2 = 0, I3 = 1]: 

 0 Select: {S1S0} = 00 -- OUTPUT: 1
 5 Select: {S1S0} = 01 -- OUTPUT: 0
10 Select: {S1S0} = 10 -- OUTPUT: 0
15 Select: {S1S0} = 11 -- OUTPUT: 1
```

---

## Simulation Waveform

![Waveform](images/waveform.png)

---
## Key Learning

- Understanding gate-level construction of multiplexers
- Select line decoding using inverted signals
- Structural realization of combinational logic
- Importance of signal routing and logic simplification

---

## Future Improvements

- Implement Dataflow Modeling version
- Implement Behavioral Modeling version
- Compare different abstraction styles
- Analyze readability and scalability of each approach