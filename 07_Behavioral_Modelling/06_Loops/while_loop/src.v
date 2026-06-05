//Find the first bit with a value 1 in flag.

module main;

`define TRUE 1'b1 ;
`define FALSE 1'b0 ;

reg [15:0] flag;

integer i;
reg continue;

initial begin
    flag = 16'b0010_0010_0000_0000;
    i = 0;
    continue = `TRUE;


    while( (i < 16) && continue) begin
        if(flag[i]) begin
            $display("Encountered a TRUE bit at a element number: %d ", i);
            continue = `FALSE
        end
        i += 1;
    end
end

endmodule