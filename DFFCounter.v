module DFFCounter(
    input Clock,
    input Reset,
    output Bit1,
    output Bit2,
    output Bit3,
    output Output
);

    wire Q1, Q2, Q3;
    wire modReset, finalReset;
    
    assign modReset = Q2 & Q3;
    assign finalReset = Reset | modReset;

    DFlipFlop DFlipFlop1(
        .Clock(Clock),
        .Reset(finalReset),
        .Q(Q1),
        .D(~Q1)
    );

    DFlipFlop DFlipFlop2(
        .Clock(Q1),
        .Reset(finalReset),
        .Q(Q2),
        .D(~Q2)
    );

    DFlipFlop DFlipFlop3(
        .Clock(Q2),
        .Reset(finalReset),
        .Q(Q3),
        .D(~Q3)
    );

    assign Bit1 = Q1;
    assign Bit2 = Q2;
    assign Bit3 = Q3;

    assign Output = Q1 & ~Q2 & ~Q3;

endmodule