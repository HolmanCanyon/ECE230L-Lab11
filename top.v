module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);
    DFlipFlop DFlipFlop(
        .D(sw[0]),
        .Q(led[0]),
        .NotQ(led[1]),
        .Clock(btnC)
    );

    TFFCounter TFFCounter(
        .Clock(btnC),
        .FF1(led[0]),
        .FF2(led[1]),
        .FF3(led[2])
    );

endmodule