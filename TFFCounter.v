module TFFCounter(
    input Clock,
    input Reset,
    output FF1,
    output FF2,
    output FF3
);

//    always begin
//        if (~Reset) begin
//            FF1 <= 1'b0;
//            FF2 <= 0;
//            FF3 <= 0;
//        end;
//    end

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