module full_adder_s (
    input a, b, input_carry,
    output output_carry, sum
);
    wire carry1, carry2, sum1;
    half_adder_s HA1 (
        .a(a),
        .b(b),
        .S(sum1),
        .C(carry1)
    );
    half_adder_s HA2 (
        .a(sum1),
        .b(input_carry),
        .S(sum),
        .C(carry2)
    );
    or (output_carry, carry1, carry2);
endmodule