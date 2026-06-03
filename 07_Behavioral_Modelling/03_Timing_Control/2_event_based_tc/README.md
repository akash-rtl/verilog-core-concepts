# Event Based Timing Control

- Event: change in the value on a register or a net.
- "@" : specifies event control
- "@" is mainly used for edge sensitive control
### Regular Event Control:
```
@(clock) q = d;
@(posedge clock) q = d;
@(negedge clock) q = d;
q = @(posedge clock) d; // d is evaluated immediately and assigned to q at +ve edge
```

### Named Event Control:
- "event" keyword is used to declare an event. Further it is then triggered and recognized.
- "->" is used to trigger an event
- "@" is used to recognize.

### Event OR Control:
- If one of the multiple signals can trigger the execution it is used.
- `always @(reset or clock or d)` - comma can also be used.
- `always @(posedge clock, negedge reset)`
- `always @* or always @(*)` - to include all input signals in the sensitivity list