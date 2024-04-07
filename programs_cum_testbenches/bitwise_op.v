module bitwise_operators();
    reg [5:0] a = 0;
    reg [5:0] b = 0;
    reg [5:0] result = 0;

    initial begin
        $monitor("a = %b, b = %b, result = %b",a,b,result);
    end
    initial begin
        a = 6'b00_0101;
        b = 6'b11_0001;
        #1; result = (a^b); //xor
        #1; result = (a&b); //and
        #1; result = (a|b); //or
        #1; result = (~b); //not b
        #1; result = (~a); //not a
        #1; result = ~(a|b); //nor
        #1; result = ~(a&b); //nand
        #1; result = (a^~b); //xnor
    end
endmodule