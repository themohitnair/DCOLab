module reduction_operators();
    reg [3:0] op = 4'b0101;
    reg result;
    initial begin
        $monitor("operand = %b, result = %b", op, result);        
    end
    initial begin
        #1; result = ^op;
        #1; result = ~^op;
        #1; result = |op;
        #1; result = ~|op;
        #1; result = &op;
        #1; result = ~&op;
    end
endmodule