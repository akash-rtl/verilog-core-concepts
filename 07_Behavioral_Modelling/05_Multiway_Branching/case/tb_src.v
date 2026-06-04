module tb;

reg [2:0] alu_c;
reg x,y;
wire [1:0]out;

main uut (alu_c, out, x,y);

initial begin

    $monitor("%2t -- alu_control = %d -- [ x = %b | y = %b ] -- out = %b ", $time, alu_c, x, y, out);

    #5 alu_c = 0; x = 1; y = 1; 
    #5 alu_c = 1; x = 0; y = 1; 
    #5 alu_c = 1; x = 1; y = 1; 
    #5 alu_c = 2; x = 1; y = 1; 
    #5 alu_c = 1; x = 0; y = 0; 
    #5 alu_c = 5; x = 0; y = 0; 
end


endmodule