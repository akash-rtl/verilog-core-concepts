module comparator(
    input [3:0] a,b,
    output a_gt_b, a_lt_b, a_eq_b
);
/* Method 2 ---------------------------------- Dataflow way
assign a_gt_b = (a > b);
assign a_lt_b = (a < b);
assign a_eq_b = (a == b);
*/


//Method 1:

wire a3, a2, a1, a0, b3, b2,b1,b0;
wire a_3,a_2,a_1,a_0,b_3,b_2,b_1,b_0;

assign {a3,a2,a1,a0} = a;
assign {b3,b2,b1,b0} = b;
assign {a_3,a_2,a_1,a_0} = ~a;
assign {b_3,b_2,b_1,b_0} = ~b;


assign a_gt_b = (a3 & b_3) |
                (a3 ~^ b3) & (a2 & b_2) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 & b_1) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) &(a0 & b_0)
                ;

assign a_lt_b = (a_3 & b3) |
                (a3 ~^ b3) & (a_2 & b2) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a_1 & b1) |
                (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) &(a_0 & b0)
                ;

assign a_eq_b = (a3 ~^ b3) & (a2 ~^ b2) & (a1 ~^ b1) & (a0 ~^ b0);





endmodule