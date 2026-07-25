`define TRUE 1'b1
`define FALSE 1'b0 

module tb;
    
    wire [1:0] main_sig, cntry_sig;
    reg car_on_cntry_rd;
    reg clock, reset;

    traffic_controller uut(.highway(main_sig), .country(cntry_sig), .X(car_on_cntry_rd), .clk(clock), .reset(reset));

    initial begin
        $monitor("%4t -- main_sig = %d -- cntry_sig = %d || car_on_cntry_rd = %b || reset = %b", $time, main_sig, cntry_sig, car_on_cntry_rd, reset);
        clock = 0;
    end

    always begin
        #5 clock = ~clock;
    end

    initial begin
        reset = `TRUE;
        //instead of using #5, the book uses repeat fn...check which is better for code. -- Check the next note.
        repeat(5) @(negedge clock);
        reset = `FALSE;
    end

    //stimulus begins:

    initial begin 
        car_on_cntry_rd = `FALSE;
        
        //Problem with #delay is that, it is independent of the clock. In future if we change clock freq, then it would be must to change the delay values.
        //Else if we use the repeat thing, then it is directly dependent on clk freq.
        //Another benefit is that, a seq ckt in general works on posedge of clock, if we set negedge on this, then our data gets half time period of time to settle.
        //Or else there may come race condition if we use #delay
        /*
        #40 car_on_cntry_rd = `TRUE;
        #10 car_on_cntry_rd = `FALSE;
        */

        repeat(20) @(negedge clock);
        car_on_cntry_rd = `TRUE;
        repeat(20) @(negedge clock);
        car_on_cntry_rd = `FALSE;

        repeat(20) @(negedge clock);
        car_on_cntry_rd = `TRUE;
        repeat(20) @(negedge clock);
        car_on_cntry_rd = `FALSE;

        repeat(20) @(negedge clock);
        car_on_cntry_rd = `TRUE;
        repeat(20) @(negedge clock);
        car_on_cntry_rd = `FALSE;

        repeat(50) @(negedge clock);

        $finish;

    end

endmodule