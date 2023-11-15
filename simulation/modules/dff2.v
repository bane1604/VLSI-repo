module dff(
    input clk,
    input rst_n,
    input d,
    output q
);

reg q_next, q_reg;
assign q = q_reg;

always @(posedge clk, negedge rst_n) begin
    if( !rst_n ) begin
        q_reg <= 1'b0;    
    end
    else begin
        q_reg <= q_next;
    end
end
always@(d) begin
    q_next = d;
end
endmodule