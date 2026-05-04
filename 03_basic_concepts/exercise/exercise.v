module exercise;
    //Ex 1:
    reg [7:0]num1 = 123;
    reg [15:0] num2;
    reg [3:0] num3 = -4'd2;
    reg [15:0] num4 = 'h1234;

    initial 
        $display("\nSol_1:  %o -- %h -- %b -- %h\n\n",num1, num2, num3, num4);

    //Ex 2:
    initial begin
        $display("Sol2: \nThis is a string displaying the %% sign");
        $display("out = in1 + in2");
        $display("Please ring a bell \\007");
        $display("This is a backslash \\ charecter\\n\n\n");
    end

    //Ex 3: 
    reg system1, \1reg , \$latch , exec$; //therefore 1reg and $latch are not-legal identifiers, but here with the help of Escaped Identifiers I worked it out. Notice the space before comma.

    //Ex 4:
    wire [7:0] a_in;
    reg [31:0] address = 3;
    integer count;
    time snap_shot;
    integer delays [0:19]; // very imp, to understand the diff b/w [0:19] and [19:0]
    reg [63:0] MEM [0:255];// here the first word is MEM[0] and if it was MEM[255:0] the first word would be MEM[255]
    parameter cache_size = 512;

    //Ex 5:
    reg latch = 4'd12;
    reg in_reg = 3'd2;
    `define MEM_SIZE 1024;


    initial begin
        $display("Sol5:\nThe current value of latch = %b\n",latch);
        /* 
        $monitor($time," In register value = %b", in_reg[2:0]); //can not select part of scalar: in_reg
        $display("The maximum memory size id %h\n\n", MEM_SIZE);//Unable to bind wire/reg/memory `MEM_SIZE' in `exercise'
        */
    end


endmodule