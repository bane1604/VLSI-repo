module m21e_testbanch;

    reg i[1:0],E,S0;
    wire out;

    integer j;
    m21e mux( .I0(i[0]), .I1(i[1]), .E(E), .S0(S0), .Y(out));


    initial begin
        for( j = 0; j < 2; j = j + 1 )begin
            i[0] = 1'b0;
            i[1] = 1'b0;
        end
        E = 1'b0;
        S0 = 1'b0;
    
    end

endmodule;