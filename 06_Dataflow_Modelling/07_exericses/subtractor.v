module subtractor(
    output diff, borrow,
    input x, y, b_in
);

assign {borrow, diff} = ((x - y) - (b_in));


endmodule