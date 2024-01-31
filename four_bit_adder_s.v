module four_bit_adder_s(
    input [3:0] a, 
    input [3:0] b,
    input input_carry,
    output [3:0] sum, 
    output output_carry
);
    wire [2:0] c;
    full_adder_s FA1 (
        .a(a[0]),
        .b(b[0]),
        .input_carry(input_carry),
        .output_carry(c[0]),
        .sum(sum[0])
    );
        full_adder_s FA2 (
        .a(a[1]),
        .b(b[1]),
        .input_carry(c[0]),
        .output_carry(c[1]),
        .sum(sum[1])
    );
        full_adder_s FA3 (
        .a(a[2]),
        .b(b[2]),
        .input_carry(c[1]),
        .output_carry(c[2]),
        .sum(sum[2])
    );
        full_adder_s FA4 (
        .a(a[3]),
        .b(b[3]),
        .input_carry(c[2]),
        .output_carry(output_carry),
        .sum(sum[3])
    );
endmodule
