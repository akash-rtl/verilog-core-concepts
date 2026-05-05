module tb;
    reg s,r;
    wire q, qbar;

    sr_latch uut(~s,~r,q,qbar);

    initial begin
        
        $dumpfile("tb_sr_latch.vcd");
        $dumpvars(0,tb);

        $monitor($time, " -- S = %b -- R = %b -- Q = %b -- Qbar = %b", s, r, q, qbar);
        
        
        s = 0; r = 1;
        #10 s = 0; r = 0;
        #10 s = 1; r = 0;
        #10 s = 0; r = 0;
        #10;

        // #10 $finish;
    end

endmodule