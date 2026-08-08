module tb;

wire [5:0] out;
reg [5:0] data;
reg control;

main uut(data, out, control);

initial begin
    $monitor("data = %b -- control = %b -- Output = %b", data, control, out);

    $display("Control 1 --> Right Shift\nControl 0 --> Left Shift");

    control = 0; data = 63;
    #5 control = 0; data = 45;
    #5 control = 0; data = 21;
    #5 control = 1; data = 8;
    #5 control = 1; data = 1;
    #5 control = 1; data = 54;
end


endmodule
