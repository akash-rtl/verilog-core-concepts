module counter;
    reg [7:0] start_count = 8'd5;
    reg [7:0] end_count = 8'd67;

    reg [7:0] count;
    reg clock;

always begin
    #5 clock = ~clock;
end


initial begin

    count = start_count;
    clock = 1'b0;
    
    begin: counting_loop
    forever begin
        @(posedge clock) count <= count + 1'b1;

        $display("%3t -- Count = %b = %d",$time, count, count);

        if(count >= end_count) begin
            disable counting_loop;
            
        end
    end
    end
    $finish;
end

endmodule