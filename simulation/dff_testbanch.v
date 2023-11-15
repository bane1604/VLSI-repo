module dff_testbanch;

reg clk, rst_n, d;
wire q;

dff delay( clk,rst_n, d,q);


initial begin
    clk = 1'b0;
    d = 1'b1;
    rst_n = 1'b1;
    #42 rst_n = 1'b0;
    #0 rst_n = 1'b1;
    #40 $finish;
end

always #5 clk = ~clk;


endmodule