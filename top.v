module top(
    input btnC,
    input btnU,
    output [6:0] led
);

    TFFCounter TFFCounter(
        .Clock(btnC),
        .Reset(btnU),
        .FF1(led[0]),
        .FF2(led[1]),
        .FF3(led[2])
    );

    DFFCounter DFFCounter(
        .Clock(btnC),
        .Reset(btnU),
        .Bit1(led[3]),
        .Bit2(led[4]),
        .Bit3(led[5]),
        .Output(led[6])
    );

endmodule