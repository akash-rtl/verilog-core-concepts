module main;

parameter count = 10;

initial begin
    repeat(count)
        $display("This text is printed %2d times!", count);
end

endmodule