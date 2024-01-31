module literal_values();
    reg [7:0] var;
    initial begin
        var = 8'd137;
        $display("Decimal Value: %d", var);
        var = 8'h89;
        $display("Hexadecimal Value: %x", var);
        var = 8'b1000_1001;
        $display("Binary Value: %b", var);
        var = 8'o211;
        $display("Octal Value: %o", var);
        var = 1'b1;
        $display("1-bit Binary Value in 8-bit vector: %b", var);
        var = 12'b1000_0001_1110;
        $display("12-bit Binary Value in 8-bit vector: %b", var);
        var = 8'hZ1;
        $display("High Impedance Value in digital circuits zzzz_0001: %d", var);
    end
endmodule