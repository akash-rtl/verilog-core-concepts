module sr_latch(
    output q, qbar,
    input s, r 
);

nor #1 (q, r, qbar);
nor #1 (qbar, s, q);

endmodule