module m21_behavioral(
    input I0,
    input I1,
    input S0,
    output reg Y
);

    always @(I0,I1,S0) begin
        if( S0 )begin
            Y = I1;
        end
        else begin
            Y = I0;
        end
    end

endmodule