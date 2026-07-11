module shifter #(
    parameter MODE = 0
) (
    input  [7:0] data_in,
    output [7:0] data_out
);

generate
    case (MODE)
        0: begin : no_shift
            assign data_out = data_in;
        end
        1: begin : shift_left
            assign data_out = data_in << 1;
        end
        2: begin : shift_right
            assign data_out = data_in >> 1;
        end
        default: begin : invalid
            assign data_out = 8'b0;
        end
    endcase
endgenerate

endmodule
