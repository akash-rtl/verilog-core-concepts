module traffic_controller(
    input X, clk, reset,
    output reg [1:0] highway_signal, country_signal
);



// initial begin
//     forever begin
//        #10 clk = ~clk;
//     end
// end

//let
//green = b10;
//yellow = b01;
//red = b00;

parameter green = 2'b10;
parameter yellow = 2'b01;
parameter red = 2'b00;

// reg highway_signal = green;
// //country road sensor's signal
// wire X;
// reg country_signal = red; 

//initializing
initial begin
    highway_signal = green;
    country_signal = red;
end

always @(negedge clk) begin
    
    if (reset)begin
        highway_signal = green;
        country_signal = red;
    end
    
    else if (X) begin 
        highway_signal = yellow;
        
        #5 highway_signal = red;
        
        #5 country_signal = green;
        
        
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