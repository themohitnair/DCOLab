module half_adder_behavioral_testbench();
    reg a, b;
    wire sum, carry;

    half_adder_behavioral HAB(
        .a(a),
        .b(b),
        .S(sum),
        .C(carry)
    );

    initial begin
        $monitor("a = %b, b = %b, Sum = %b, Carry = %b\n",a,b,sum,carry);
    end
    initial begin
        #2; a = 0; b = 0;
        #2; a = 0; b = 1;
        #2; a = 1; b = 0;
        #2; a = 1; b = 1;
    end
endmodule