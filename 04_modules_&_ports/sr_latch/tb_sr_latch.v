module tb;
    reg sbar,rbar;
    wire q, qbar;

    sr_latch uut(sbar,rbar,q,qbar);

    initial begin
        
        $dumpfile("tb_sr_latch.vcd");
        $dumpvars(0,tb);

        $monitor($time, " -- Sbar = %b -- Rbar = %b -- Q = %b -- Qbar = %b", sbar, rbar, q, qbar);
        
        
        sbar = 0; rbar = 1;
        #10 sbar = 1; rbar = 1;
        #10 sbar = 1; rbar = 0;
        #10 sbar = 1; rbar = 1;
        #10;

        // #10 $finish;
    end

endmodule