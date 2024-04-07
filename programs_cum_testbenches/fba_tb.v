module four_bit_adder_testbench();
    wire [3:0] sum;
    reg [3:0] a;
    reg [3:0] b;
    reg input_carry = 1'b0;
    wire output_carry;
    four_bit_adder_s FBA (
        .a(a),
        .b(b),
        .input_carry(input_carry),
        .output_carry(output_carry),
        .sum(sum)
    );
    initial begin
        $monitor("a = %b, b = %b, Sum = %b, Output Carry = %b", a, b, sum, output_carry);
    end
    initial begin
        #2; a = 4'b0000; b = 4'b0001;
        #2; a = 4'b1000; b = 4'b0011;
        #2; a = 4'b1100; b = 4'b0011;
        #2; a = 4'b1011; b = 4'b1101;
        #2; a = 4'b0001; b = 4'b0111;
        #2; a = 4'b1111; b = 4'b0001;
        #2; a = 4'b0011; b = 4'b1001;
        #2; a = 4'b1000; b = 4'b1111;
        #2; a = 4'b1011; b = 4'b0001;
        #2; a = 4'b0010; b = 4'b0001;
    end
endmodule
