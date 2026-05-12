# Maximum Delay (T-max):

### Simulation Output:
```
 0 -- in1 = x | in0 = x | s = x || OUT = x
10 -- in1 = 0 | in0 = 1 | s = 0 || OUT = x
17 -- in1 = 0 | in0 = 1 | s = 0 || OUT = 1
20 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 1
25 -- in1 = 0 | in0 = 1 | s = 1 || OUT = x
27 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 0
30 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 0
33 -- in1 = 1 | in0 = 1 | s = 0 || OUT = x
37 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 1
40 -- in1 = 1 | in0 = 1 | s = 1 || OUT = 1
```

### Waveform:
![T-typ Waveform](images/tmax.png)
---

# Typical Delay (T-typ):

### Simulation Output:
```
 0 -- in1 = x | in0 = x | s = x || OUT = x
10 -- in1 = 0 | in0 = 1 | s = 0 || OUT = x
16 -- in1 = 0 | in0 = 1 | s = 0 || OUT = 1
20 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 1
24 -- in1 = 0 | in0 = 1 | s = 1 || OUT = x
26 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 0
30 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 0
32 -- in1 = 1 | in0 = 1 | s = 0 || OUT = x
36 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 1
40 -- in1 = 1 | in0 = 1 | s = 1 || OUT = 1
```

### Waveform:
![T-typ Waveform](images/ttyp.png)

---


# Minimum Delay (T-min):

### Simulation Output:
```
 0 -- in1 = x | in0 = x | s = x || OUT = x
10 -- in1 = 0 | in0 = 1 | s = 0 || OUT = x
15 -- in1 = 0 | in0 = 1 | s = 0 || OUT = 1
20 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 1
23 -- in1 = 0 | in0 = 1 | s = 1 || OUT = x
25 -- in1 = 0 | in0 = 1 | s = 1 || OUT = 0
30 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 0
31 -- in1 = 1 | in0 = 1 | s = 0 || OUT = x
35 -- in1 = 1 | in0 = 1 | s = 0 || OUT = 1
40 -- in1 = 1 | in0 = 1 | s = 1 || OUT = 1
```

### Waveform:
![T-typ Waveform](images/tmin.png)

---
---

## Analysis of Signal Contention (Intermediate 'x') - For Typical Delay

The `x` states appear because the **Turn-off delay (6)** is longer than the **Rise (2)** or **Fall (4)** delays. This creates a "contention window" where both buffers are driving the wire at the same time.

### Timing Breakdown

* **$s: 0 \to 1$ (at $t=20$):** `bufif0` stays active until $t=26$, but `bufif1` starts driving at $t=24$.
* **Contention:** $t \in [24, 26]$


* **$s: 1 \to 0$ (at $t=30$):** `bufif1` stays active until $t=36$, but `bufif0` starts driving at $t=32$.
* **Contention:** $t \in [32, 36]$



### Solution

In hardware design, this is avoided using **Break-Before-Make** logic—ensuring the turn-off delay is shorter than the turn-on delay so the wire is released before the next driver takes over.

---
---

## Why the Delay at t=10 is 6 Units (Not 2)

At t=10, the select line s changes from x to 0. While the rise delay for bufif0 is 2, the output stays x until t=16 because of how Verilog resolves conflicting signals on a wire.

### The Logic Bottleneck

When s transitions from x to 0:

1. bufif1 (the off-going gate) starts in an unknown state (x). It begins turning off, which takes 6 units (Turn-off delay). It continues to drive x until t=16.
2. bufif0 (the on-going gate) begins turning on to drive a 1. This takes 2 units (Rise delay). It starts driving 1 at t=12.

### Wire Resolution Table

Between t=12 and t=16, the wire receives two different signals:

* Driver A (bufif0): 1
* Driver B (bufif1): x

In Verilog, any logic level (0 or 1) combined with an unknown state (x) on a wire results in x. Therefore, the output remains x until bufif1 finally reaches the high-impedance state (Z) at t=16. Only then does the 1 from bufif0 become the sole driver and appear at the output.

This demonstrates that the slowest transition—in this case, the Turn-off delay—often dictates when a signal becomes valid.
