module full_adder_testbench();
    reg a, b, input_carry;
    wire output_carry, sum;
    
    full_adder_s FA (
        .a(a),
        .b(b),
        .input_carry(input_carry),
        .output_carry(output_carry),
        .sum(sum)
    );

    initial begin
        $monitor("a = %b, b = %b, Input Carry = %b, Sum = %b, Output Carry = %b\n",a,b,input_carry,sum,output_carry);
    end

    initial begin
        #2; a = 0; b = 0; input_carry = 0;
        #2; a = 0; b = 0; input_carry = 1;
        #2; a = 0; b = 1; input_carry = 0;
        #2; a = 0; b = 1; input_carry = 1;
        #2; a = 1; b = 0; input_carry = 0;
        #2; a = 1; b = 0; input_carry = 1;
        #2; a = 1; b = 1; input_carry = 0;
        #2; a = 1; b = 1; input_carry = 1;
    end
endmodule