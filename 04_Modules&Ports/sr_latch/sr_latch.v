module sr_latch(Sbar, Rbar, Q, Qbar);
    input Sbar, Rbar;
    output Q, Qbar;

    nand(Q,Sbar, Qbar);
    nand(Qbar, Rbar, Q);

endmodule