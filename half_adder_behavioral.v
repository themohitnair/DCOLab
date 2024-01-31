module half_adder_behavioral(
    input a, b,
    output reg S,
    output reg C
);
    always @(a or b) begin 
        S = a ^ b;
        C = a & b;
    end
endmodule