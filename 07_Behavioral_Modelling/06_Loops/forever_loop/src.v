module main;

reg clock;

initial begin
    clock = 0;

    forever #10 clock = ~clock;
end

initial begin
    $monitor("%2t -- Clock = %b", $time, clock);
    #99 $finish;
end


endmodule