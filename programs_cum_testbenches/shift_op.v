module shift_op();
    reg [7:0] operand = 8'b0101_0000;
    reg [7:0] result = 0;
    initial begin
        $monitor("operand = %b -> %d, result = %b -> %d",operand, operand, result, result);
    end
    initial begin
        #1; result = operand >> 2;
        #1; result = operand << 1;
        #1; result = operand >>> 5;
    end
endmodule