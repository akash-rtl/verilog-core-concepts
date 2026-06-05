module main;

integer count;

initial begin
    for (count = 0; count < 21; count++) begin
        $display("Count = %d", count);
    end
end

endmodule