module TFFCounter(
    input Clock,
    input Reset,
    output FF1,
    output FF2,
    output FF3
);

    TFlipFlop TFlipFlop1(
        .Q(FF1),
        .Reset(Reset),
        .Clock(Clock)
    );

    TFlipFlop TFlipFlop2(
        .Q(FF2),
        .Reset(Reset),
        .Clock(FF1)
    );

    TFlipFlop TFlipFlop3(
        .Q(FF3),
        .Reset(Reset),
        .Clock(FF2)
    );

endmodule