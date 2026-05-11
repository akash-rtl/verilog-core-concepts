module example(
    output out,
    input a, b, c 
);
wire e;

//or gate delay - 4 units && and gate delay - 5 units
//output = c.(a+b) 

and #5 (e, a, b);
or #4 (out, e, c);


endmodule