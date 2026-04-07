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

    ModuloCounter mc(
        .clock(btnC),
        .reset(btnU),
        .state(led[5:3]),
        .countOut(led[6])
    );

endmodule