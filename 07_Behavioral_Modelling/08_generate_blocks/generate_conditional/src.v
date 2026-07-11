module main #(parameter fast_mult = 0)(
    input a,b,
    output out
);

reg result_reg;

generate

    if (fast_mult == 1) begin: fast_multiplication
        assign out = a * b;
    end

    else if (fast_mult == 0) begin : slow_multiplication
        always @(*) result_reg = a * b;  // simplified for example
        assign out = result_reg;
    end

endgenerate



endmodule
