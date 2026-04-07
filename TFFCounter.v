module TFFCounter(
    input Clock,
    output FF1,
    output FF2,
    output FF3
);


    TFlipFlop TFlipFlop1(
        .Q(FF1),
        .Clock(Clock)
    );

    TFlipFlop TFlipFlop2(
        .Q(FF2),
        .Clock(FF1)
    );

    TFlipFlop TFlipFlop3(
        .Q(FF3),
        .Clock(FF2)
    );

endmodule