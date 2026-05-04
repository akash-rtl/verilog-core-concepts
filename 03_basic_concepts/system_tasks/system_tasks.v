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

    reg [4:0] var = 25;
    initial
        $display("Binary value of var is: %b",var);

    //$monitor

    reg clk = 0;
    always
        #10 clk = ~clk;

    initial begin
        $monitor("Clk value is: %t -- var value is: %b", clk, var);

        #50 $stop; //type 'cont' in terminal to continue -- or 'finish' to finish the sim there. -- there are still many command present for debugging and all (explore them)
        #100 $finish;
    end  
    
    

endmodule