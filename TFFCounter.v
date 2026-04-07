module TFFCounter(
    input Clock,
    input Reset,
    output FF1,
    output FF2,
    output FF3
);

    always @(posedge Reset) begin
        Clock <= 0;
        FF1 <= 0;
        FF2 <= 0;
        FF3 <= 0;
    end

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