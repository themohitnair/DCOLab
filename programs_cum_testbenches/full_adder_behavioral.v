module full_adder_behavioral (
    input a, b, input_carry,
    output reg sum, 
    output reg output_carry
);
    always @(a or b or input_carry) begin
        sum = (a ^ b) ^ input_carry;
        output_carry = (input_carry & (a ^ b)) | (a & b);
    end
endmodule