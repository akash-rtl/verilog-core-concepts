# OPERATORS:

### Verilog Implementation:
```verilog
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
```

### Simulation Output:
```
a1 = 0011 | b1 = 0100 | c1 = x01x | d1 = 110110 = -10 |

Arithmetic Operators: 
a1 + b1 = 0111 | a1*b1 = 1100 | a1**b1 =  81 | a1 + c1 = xxxx

Logical Operators: 
a1 && b1 = 1 | a1 || b1 = 1 | !a = 0 | a1 && c1 = 1

Relational Operators: 
a1 > b1 = 0 | a1 < c1 = x | a1 < b1 = 1 

Equality Operators:
a1 != b1 = 1 | (c1 == 4'bx01x) = x | (c1 === 4'bx01x) = 1 

Bitwise Operators: 
~a1 = 1100 --- a1 | b1 = 0111 --- a1 & c1 = 001x --- a1 | c1 = x011 --- b1 ^ c1 = x11x

Reduction Operators: 
&a1 = 0 --- |b1 = 1 --- ^c1 = x --- ~^a1 = 1

Shift Operators: 
a1 << 2 = 1100 | b1 >> 2 = 0001 | c1 >> 2 = 00x0 | d1 << 2 = 011000 --- 
d1 >> 2 = 001101 --- d1 >>> 2 = 111101

Concantenation Operators: 
{a1, b1, c1, 3'b0} = 00110100x01x000110110 |

Replication Operators: 
{{4{a1[1:0]}}, {2{c1}}, {2'b01}} = 11111111x01xx01x01010101

Conditional Operators: 
(a1>b1)?true:false = false
```
