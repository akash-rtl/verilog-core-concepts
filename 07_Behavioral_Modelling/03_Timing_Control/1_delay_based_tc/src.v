module main;

parameter latency = 5;

reg x,y,z,p;

initial begin
    
    $monitor("%2t -- x = %b | y = %b | z = %b | p = %b | ",$time, x, y, z, p);

    x= 0;

    #10 y = 1;
    
    #latency z = 0;
    
    #y x = x + 1;
    
    #(4:5:6) p = 0;
end


endmodule