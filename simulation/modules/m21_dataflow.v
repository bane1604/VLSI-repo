module m21_dataflow(
    input I0,
    input I1,
    input S0,
    output Y
);

    assign Y = S0? I1: I0;

endmodule
