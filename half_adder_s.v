module half_adder_s(
    input a,
    input b, 
    output S,
    output C
);
    xor(S, a, b);
    and(C, a, b);
endmodule