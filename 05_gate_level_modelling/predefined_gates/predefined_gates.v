module basic_gates(
    output [5:0] OUT,
    input I1, I2, I3
);
// We will instantiate each gate after certain delay and in test_bench print is using $monitor
// Naming primitve's instances is not mandatory

//2-i/p
and (OUT[0], I1, I2);

or (OUT[1], I1, I2);

xor (OUT[2], I1, I2);

nand (OUT[3], I1, I2);

nor (OUT[4], I1, I2);

xnor (OUT[5], I1, I2);



endmodule


