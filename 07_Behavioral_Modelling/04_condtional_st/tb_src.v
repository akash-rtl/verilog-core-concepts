module tb;

reg [2:0] alu_c;
reg x,z;
wire [1:0]y;

main uut (y, alu_c, x,z);

initial begin

    $monitor("%2t -- alu_control = %d -- [ x = %b | z = %b ] -- y = %b ", $time, alu_c, x, z, y);

    #5 alu_c = 0; x = 1; z = 1; 
    #5 alu_c = 1; x = 0; z = 1; 
    #5 alu_c = 1; x = 1; z = 1; 
    #5 alu_c = 2; x = 1; z = 1; 
    #5 alu_c = 1; x = 0; z = 0; 
    #5 alu_c = 5; x = 0; z = 0; 
end


endmodule