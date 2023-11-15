module cd42(
    input I0, input I1, input I2, input I3, output reg W, output reg Y1, output reg Y0
);


always @( I0,I1,I2,I3 ) begin
    
    casex({I3,I2,I1,I0})
        4'b0001 : begin {Y1,Y0} = 2'b00; W = 1'b1; end
        4'b001x : begin {Y1,Y0} = 2'b01; W = 1'b1; end
        4'b01xx : begin {Y1,Y0} = 2'b10; W = 1'b1; end
        4'b1xxx : begin {Y1,Y0} = 2'b11; W = 1'b1; end
        default: begin {Y1,Y0} = 2'b00; W = 1'b0; end
    endcase
end

endmodule