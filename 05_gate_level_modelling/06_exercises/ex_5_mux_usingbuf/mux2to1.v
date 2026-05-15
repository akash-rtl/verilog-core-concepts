module mux2to1(
    output out,
    input in1, in0, s
);

bufif0 #(1:2:3, 3:4:5, 5:6:7)(out, in0, s);
bufif1 #(1:2:3, 3:4:5, 5:6:7)(out, in1, s);

endmodule