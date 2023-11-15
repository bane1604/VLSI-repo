module m41(
    input i0,
    input i1,
    input i2,
    input i3,
    input [1:0]S,
    output reg Y
);

always @(i0 or i1 or i2 or i3 or S)
    case(S)
        2'b00: Y <= i0;
        2'b01: Y <= i1;
        2'b10: Y <= i2;
        2'b11: Y <= i3;  
    endcase



endmodule