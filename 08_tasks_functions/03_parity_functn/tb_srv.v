module tb; 

wire parity;
reg [4:0] data;

main uut(data, parity);

initial begin
    $monitor("Data = %b -- Parity = %b", data, parity);

    data = 12;
    #5 data = 12;
    #5 data = 18;
    #5 data = 31;
    #5 data = 3;
    #5 data = 7;
    #5 data = 19;

    #10 $finish;


    
end


endmodule