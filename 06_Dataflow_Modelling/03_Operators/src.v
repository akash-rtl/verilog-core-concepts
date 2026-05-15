module operators;


reg[3:0] a1, b1, c1;
reg signed [5:0] d1;

initial begin
    
    a1 = 4'b0011; b1 = 4; c1 = 4'bx01x; d1 = -6'd10;
    $display("a1 = %b | b1 = %b | c1 = %b | d1 = %b = %d |\n", a1, b1, c1, d1, d1);



    //Arithmetic Operators
    $display("Arithmetic Operators: \na1 + b1 = %b | a1*b1 = %b | a1**b1 = %d | a1 + c1 = %b", (a1+b1),(a1*b1),({4'b0,a1}**b1), (a1 + c1));
    
    //Logical Operators
    $display("\nLogical Operators: \na1 && b1 = %b | a1 || b1 = %b | !a = %b | a1 && c1 = %b", (a1 && b1),(a1 || b1),(!a1), (a1 && c1));

    //Relational Operators
    $display("\nRelational Operators: \na1 > b1 = %b | a1 < c1 = %b | a1 < b1 = %b ",(a1 > b1),(a1 < c1),(a1 < b1));

    //Equality Operator
    $display("\nEquality Operators:\na1 != b1 = %b | (c1 == 4'bx01x) = %b | (c1 === 4'bx01x) = %b ",(a1 != b1),(c1 == 4'bx01x),(c1 === 4'bx01x));
    
    //Bitwise Operators
    $display("\nBitwise Operators: \n~a1 = %b --- a1 | b1 = %b --- a1 & c1 = %b --- a1 | c1 = %b --- b1 ^ c1 = %b",(~a1),(a1 | b1),(a1 & c1),(a1 | c1),(b1 ^ c1));

    //Reduction Operators
    $display("\nReduction Operators: \n&a1 = %b --- |b1 = %b --- ^c1 = %b --- ~^a1 = %b",(&a1),(|b1),(^c1),(~^a1));
    
    //Shift Operators
    $display("\nShift Operators: \na1 << 2 = %b | b1 >> 2 = %b | c1 >> 2 = %b | d1 << 2 = %b --- \nd1 >> 2 = %b --- d1 >>> 2 = %b",(a1 << 2),(b1 >> 2),(c1 >> 2),(d1 << 2), (d1 >> 2), (d1 >>> 2));
     
    //Concantenation Operators
    $display("\nConcantenation Operators: \n{a1, b1, c1, 3'b0} = %B ", ({a1, b1, c1, 3'b0, d1}));
   
    //Replication Operators
    $display("\nReplication Operators: \n{{4{a1[1:0]}}, {2{c1}}, {2'b01}} = %b", {{4{a1[1:0]}}, {2{c1}}, {4{2'b01}}});
    
    //Conditional Operators
    $display("\nConditional Operators: \n(a1>b1)?true:false = %s", ((a1>b1)?"true":"false"));
    
    
    $display("\n");



end


endmodule