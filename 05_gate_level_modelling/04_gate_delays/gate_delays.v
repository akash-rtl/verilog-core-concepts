module delays(
    output [5:0]out,
    input i1, i2, ctrl
);



and #(5) (out[0], i1, i2);
or #(4,6) (out[1], i1, i2);
bufif0 #(4,6,7) (out[2], i1, ctrl);

//min/typ/max delay

and #(3:5:11) (out[3], i1, i2);
or #(7:9:13,5:10:13) (out[4], i1, i2);
bufif0 #(4:11:12,9:11:15,5:6:8) (out[5], i1, ctrl);

// to activate any particular delay following way to be executed during runtime: 
// iverilog -Tmax -o gate_delays.vvp gate_delays.v // or else use other keyword -Tmin // -Ttyp is by default

endmodule