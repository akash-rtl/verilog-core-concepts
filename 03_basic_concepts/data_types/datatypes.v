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

    //7. Array
    reg bool_arr [31:0]; // 32 one bit boolean register variable
	wire [7:0] w_arr [5:0]; //declare an array of 8 bit vector wire 
	reg [63:0] array_4d [15:0][7:0][7:0][255:0]; // Four dimensional array

    initial 
        array_4d[0][0][0][0][15:0] = 0; //clr bit 15:0 for the register accessed by [0][0][0][0]

    //8. Memories: 1-dimensional array
    reg mem1bit [0:1023]; //Memory mem1bit with 1K 1-bit words
    reg [7:0] membyte [0:1023]; //Memory membyte with 1K 8-bit words(bytes)
    
    //to fetch one:
    initial 
        membyte[511] = 0; //here entire 1byte word is fetched

    
    //9. Parameters - using defparam they can be modified, will discuss later in detail
    parameter port_id = 5;
    //parameter signed [15:0] WIDTH; //fixed sign and range for parameter width

    //10. Strings - each char takes 8-bit
    reg [8*18:1] string_value;
    
    initial begin  
        string_value = "Hello Verilog World";
        $display("%s",string_value);
    end

    
    



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