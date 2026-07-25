//Note: This is non synthesizable code, since there is an always(clk) block inside an always(clk) block.
//Will be designing another of this code, which is synthesizable

`define delayY2R 2
`define delayR2G 3

module traffic_controller(
    output reg [1:0] highway,country, 
    input X, clk, reset
    );

parameter S0 = 3'd0, //hwy = GREEN -- cty = RED
        S1 = 3'd1, //hwy = YELLOW -- cty = RED
        S2 = 3'd2, //hwy = RED -- cty = RED
        S3 = 3'd3, //hwy = RED -- cty = GREEN
        S4 = 3'd4; //hwy = RED -- cty = YELLOW

parameter RED = 2'd1,
YELLOW = 2'd2,
GREEN = 2'd3;


//-------------------

reg [2:0] state, next_state;

//This is the always block, where we set smooth transition to next state.
always @(posedge clk) begin
    if(reset)
        state <= S0;
    else
        state <= next_state;   
end
/* For the above block if we use it like this:

always @(*) begin
    if(reset)
        state <= S0;
    else
        state <= next_state;   
end

The Hardware Reality: Flip-Flops vs. Latches
By changing always @(posedge clk) to always @(*), you told the synthesizer:
"Do not use Flip-Flops. Update the state immediately whenever any signal changes."

Combinational Loops & Latches: 
Without a clock edge to lock the data, the synthesizer will try to build your state machine out of transparent latches or purely combinational logic.

State Racing: In a physical FPGA or ASIC, as soon as next_state changes, state will update instantly.
This can cause a chain reaction where the state machine races through multiple states in a fraction of a nanosecond, completely out of control, before the next clock edge even arrives.

Non-Blocking in Combinational Logic: 
You used a non-blocking assignment (<=) inside an always @(*) block. In VLSI design, this is a major red flag.
Non-blocking assignments should exclusively be used for clocked sequential logic.

*/



//This is an Combinational block, here giving default values won't create a glitchy effect in future.
//This always block here assigns what happens in each state.
always @(state) begin
    //defualt values:
    highway = GREEN;
    country = RED;

    case(state)
        S0 :begin
            highway = GREEN;
            country = RED;
        end

        S1 : highway = YELLOW;
        S2 : highway = RED;

        S3 : begin
            highway = RED;
            country = GREEN;
        end
        S4: begin
            highway = RED;
            country = YELLOW;
        end

    default: begin
        highway = GREEN;
        country = RED;
    end
    endcase
end

//This always block tells when and how to make transition b/w states.
always @(posedge clk) begin
        case(state)
            S0 :begin 
                if(X==1) 
                    next_state <= S1;   
                else
                    next_state <= S0;
            end 
            S1 : begin
                repeat(`delayY2R) @(posedge clk);
                next_state <= S2;
            end
            S2 : begin
                repeat(`delayR2G) @(posedge clk);
                next_state <= S3;
            end 

            S3: begin
                if(X == 0)
                    next_state <= S4;
                else
                    next_state <= S3; 
            end

            S4: begin
                repeat(`delayR2G) @(posedge clk);
                next_state <= S0;
            end

        endcase

    end

endmodule










//Alternative Incomplete solution:

/*

module traffic_controller;

reg clk = 0;

initial begin
    forever begin
       #10 clk = ~clk;
    end
end

//let
//green = b10;
//yellow = b01;
//red = b00;

parameter green = 2'b10;
parameter yellow = 2'b01;
parameter red = 2'b00;

reg highway_signal = green;


//country road sensor's signal
wire X;

reg country_signal = red; 

always @(negedge clk) begin
    if (X) begin 

        country_signal = green;
        highway_signal = red;
        
        wait (X==0);

        #5 country_signal = yellow;
        #5 country_signal = red;
        #5 highway_signal = green;
    end


    else if (X == 0) begin
        country_signal = red;
        highway_signal = green;    
    end
end


endmodule


*/

