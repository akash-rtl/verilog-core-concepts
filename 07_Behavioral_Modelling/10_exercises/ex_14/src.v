module main; 

reg [3:0] cache_var [0:1023];
integer i = 0;
initial begin
    for(i = 0; i < 1024; i = i + 1) begin
            cache_var[i] = 4'b0000;
    end
end

endmodule