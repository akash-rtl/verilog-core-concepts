//value set: 0,1,z,x

module datatype;
    //1. nets
    wire net1; 

    //2. registers
    reg register1 = 1'b1;

    //3. Vectors
    reg [7:0] bus; //8-bit bus
    reg [2:0] byte_select; // for Variable Vector Part select;

    //4. Integers
    integer i = -1;

    //5. Real
    real pi = 3.14; // or "h = 3e9" etc..

    //6. Time
    time save_sim_time;

    

    
    



    initial begin
        bus = 'b1011;
        byte_select = bus[1+:3]; //starting bit = 1, width = 3 => bus[3:1]

        save_sim_time = $time;
        
        $display(net1, register1, bus, byte_select," %0d", save_sim_time);

        #5;
        save_sim_time = $time;
        $displayb(net1, " ", register1," %0b", bus, " ", byte_select," %d", save_sim_time);
    end
endmodule