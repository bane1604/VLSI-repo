module cd42_testbanch;
    
    reg [3:0]I;
    wire [1:0]Y;
    wire W;

    integer index;

    cd42 inst( .I0(I[0]), .I1(I[1]), .I2(I[2]),.I3(I[3]), .Y1(Y[1]), .Y0(Y[0]), .W(W));

    initial begin
        for( index = 0; index < 16; index = index + 1 ) begin
            I = index;
            #5;
        end
        $finish;
    end
endmodule