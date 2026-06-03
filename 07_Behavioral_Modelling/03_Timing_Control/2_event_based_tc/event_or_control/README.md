# Event OR Control:

### Verilog Implementation:
```
always #5 clock = ~clock;
always #7 t = ~t;

always @(posedge t or negedge clock) begin
    a <= ~a;
    b <= ~b;
    c <= ~c;
end

always @(negedge t, posedge clock) begin
    d <= ~d;
    e <= ~e;
end

always @(*) begin
    x = a ? b+d : b+e  ; //Since these are combinational block here non blocking assignment is not mandatory.
    y = a ? c+e : c+e  ;
end
```

### Simulation Output:
```
0 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 0 | x = 0 | y = 0 | 
 5 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
 7 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 1 | x = 0 | y = 0 | 
10 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 1 | x = 1 | y = 1 | 
14 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 0 | x = 0 | y = 0 | 
15 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
20 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 0 | x = 0 | y = 0 | 
21 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 1 | x = 1 | y = 1 | 
25 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 1 | x = 0 | y = 0 | 
28 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
30 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 0 | x = 0 | y = 0 | 
35 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 1 | x = 0 | y = 0 | 
40 -- a = 1 | b = 1 | c = 1 | d = 0 | e = 0 | t = 1 | x = 1 | y = 1 | 
42 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 0 | x = 0 | y = 0 | 
45 -- a = 1 | b = 1 | c = 1 | d = 0 | e = 0 | t = 0 | x = 1 | y = 1 | 
49 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 1 | x = 0 | y = 0 | 
50 -- a = 1 | b = 1 | c = 1 | d = 0 | e = 0 | t = 1 | x = 1 | y = 1 | 
55 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 1 | x = 0 | y = 0 | 
56 -- a = 1 | b = 1 | c = 1 | d = 0 | e = 0 | t = 0 | x = 1 | y = 1 | 
60 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 0 | x = 0 | y = 0 | 
63 -- a = 1 | b = 1 | c = 1 | d = 0 | e = 0 | t = 1 | x = 1 | y = 1 | 
65 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 1 | x = 0 | y = 0 | 
70 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 0 | x = 0 | y = 0 | 
75 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
77 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 1 | x = 0 | y = 0 | 
80 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 1 | x = 1 | y = 1 | 
84 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 0 | x = 0 | y = 0 | 
85 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
90 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 0 | x = 0 | y = 0 | 
91 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 1 | x = 1 | y = 1 | 
95 -- a = 0 | b = 0 | c = 0 | d = 0 | e = 0 | t = 1 | x = 0 | y = 0 | 
98 -- a = 0 | b = 0 | c = 0 | d = 1 | e = 1 | t = 0 | x = 1 | y = 1 | 
100 -- a = 1 | b = 1 | c = 1 | d = 1 | e = 1 | t = 0 | x = 0 | y = 0 |
```

### Waveform:
![waveform](images/waveform.png)