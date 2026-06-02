module main;

parameter latency = 5;

reg x,y,z,p;
reg i;
reg a,b;

initial begin
    
    $monitor("%2t -- x = %b | y = %b | z = %b | p = %b | i = %b | a = %b | b = %b | ",$time, x, y, z, p, i, a, b);


//Regular Delay Control ------------------------
    x= 0;
    #10 y = 1;
    #latency z = 0;
    #y x = x + 1;
    #(4:5:6) p = 0;

//Intra Assignment Dealy Control ------------------

    i = #7 x + z;
 
end

//Zero Delay Control --------------------
initial begin
    a = 0;
    b = 0;
end
initial begin
    #0 a = 1;
    #0 b = 1;
end

endmodule