module m21e(
    input I0,
    input I1,
    input S0,
    input E,
    output Y
);
    wire T1,T2,notS0;
    not( notS0, S0);
    and( T1, I0, notS0, E);
    and( T2, I1, S0, E);
    or( Y, T1, T2);

endmodule