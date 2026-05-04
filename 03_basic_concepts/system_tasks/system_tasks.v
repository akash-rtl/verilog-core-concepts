/*System Tasks:
    $display - display stuff
    $monitor - if any of the variable changes, display all the values
    $monitoron
    $monitoroff
    $stop
    $finish
*/
//Compiler directives when used will be discussed there itself


module system_tasks;
    
    initial
        $display("Hello Verilog World!!");

    reg [4:0] var = 8;
    initial
        $display("Binary value of var is: %b",var);

    //$monitor

    reg clk = 0;
    always begin
        #10 clk = ~clk;
        var = var + 1;
    end
    initial begin
        $monitor($time, " Clk value is: %b -- var value is: %b", clk, var);

        #50 $stop; //type 'cont' in terminal to continue -- or 'finish' to finish the sim there. -- there are still many command present for debugging and all (explore them)
        #100 $finish;
    end  
    



    //let us get the graph for above vars:
    initial begin
    $dumpfile("system_tasks.vcd");
    $dumpvars(0,system_tasks);
    end
    

endmodule