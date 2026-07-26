module main; 

    reg clock ;

    initial begin
        clock = 0;

        $dumpfile("tb_src.vcd");
        $dumpvars(0,main);


        repeat(3) @(negedge clock); $finish;
    end

    always begin
        #30 clock = ~clock;
        #10 clock = ~clock;
    end


endmodule
