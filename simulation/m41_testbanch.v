module m41_testbanch;

    reg i0,i1,i2,i3;
    reg [1:0] S;
    wire out;

    m41 inst( .i0(i0), .i1(i1), .i2(i2), .i3(i3), .S(S), .Y(out));
    initial begin
        i0 = 1'b0;
        i1 = 1'b0;
        i2 = 1'b0;
        i3 = 1'b0;
        S = 2'b00;
        #320 $finish;
    end


    always #5 i0 = ~i0;
    always #10 i1 = ~i1;
    always #20 i2 = ~i2;
    always #40 i3 = ~i3;
    always #80 S[0] = ~S[0];
    always #160 S[1] = ~S[1];



endmodule
