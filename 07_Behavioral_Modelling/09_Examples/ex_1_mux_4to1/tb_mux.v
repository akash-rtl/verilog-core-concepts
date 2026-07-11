module tb;

wire out;
reg [3:0] bus;
reg [1:0] select;

mux uut(.out(out), .i(bus), .s(select));

initial begin
    $monitor("%2t -- bus = %b | select = %b | output = %b", $time, bus, select, out);

    bus = 4'b1100;

    #5 select = 2'b00;
    #5 select = 2'b01;
    #5 select = 2'b10;
    #5 select = 2'b11;

end

endmodule
