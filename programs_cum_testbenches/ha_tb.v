module half_adder_s_testbench();
    reg a, b;
    wire S, C;
    half_adder_s HA(
        .a(a),
        .b(b),
        .S(S),
        .C(C)
    );
    initial begin
        $monitor("a = %b, b = %b, Sum = %b, Carry = %b\n",a,b,S,C);
    end
    initial begin
        #2; a = 0; b = 0;
        #2; a = 0; b = 1;
        #2; a = 1; b = 0;
        #2; a = 1; b = 1;
    end
endmodule