module top(
    input [3:0] sw,
    input btnC,
    output [5:0] led
);

    TFFCounter TFFCounter(
        .Clock(btnC),
        .FF1(led[0]),
        .FF2(led[1]),
        .FF3(led[2])
    );

endmodule