module m41_testbanch2;

    reg i0,i1,i2,i3;
    reg [1:0] S;
    wire out;

    integer index;
    m41 inst( .i0(i0), .i1(i1), .i2(i2), .i3(i3), .S(S), .Y(out));
    initial begin
        
        for( index = 0; index < 64; index = index+1 ) begin
            {S[1],S[0], i3,i2,i1,i0} = index;
            #5;
        end
        $finish;
    end


    



endmodule
