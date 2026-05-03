//value set: 0,1,z,x

module datatype;
    //1. nets
    wire net1; 

    //2. registers
    reg register1 = 1'b1;

    //3. Vectors
    reg [7:0] bus; //8-bit bus
    



    initial begin
        bus = 'b1011;
        $display(net1, register1, bus);
    end
endmodule