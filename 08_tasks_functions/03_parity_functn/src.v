module main(
    input [4: 0] data,
    output reg parity
);   

always @(data) begin
    parity = calc_parity(data);
end

function calc_parity(
    input [4:0] data
);
    begin
    calc_parity = ^data;
    end    
endfunction

endmodule