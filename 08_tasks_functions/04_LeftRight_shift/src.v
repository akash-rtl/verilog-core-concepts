

module main(
    input [5:0] data,
    output reg [5:0] out,
    input control
);

`define Left_shift 1'b0
`define Right_shift 1'b1

always @(data) begin
    out = shift(data,control);
end


function [5:0] shift(
    input [5:0] data,
    input control
);
begin
    if(control)
        shift = data >> 1;
    else if(!control)
        shift = data << 1;
end    
endfunction


endmodule
