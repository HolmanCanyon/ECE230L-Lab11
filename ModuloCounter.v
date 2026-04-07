module ModuloCounter (
    input clock,
    input reset,
    output state[2:0],
    output countOut
);
    wire creset;
    wire addin[2:0], carry[2:0], addout[2:0];
    DFlipFlop dff0(
        .clock(clock),
        .reset(~reset | creset),
        .D(addout[0]),
        .Q(addin[0])
    );

    full_adder fa0 (
        .A(addin[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(addout[0]),
        .Cout(carry[0])
    );

    DFlipFlop dff1(
        .clock(clock),
        .reset(~reset | creset),
        .D(addout[1]),
        .Q(addin[1])
    );

    full_adder fa1 (
        .A(addin[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(addout[1]),
        .Cout(carry[1])
    );

    DFlipFlop dff2(
        .clock(clock),
        .reset(~reset | creset),
        .D(addout[2]),
        .Q(addin[2])
    );

    full_adder fa2 (
        .A(addin[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(addout[2]),
        .Cout(carry[2])
    );

    assign state[2:0] = addin[2:0];

    assign creset = ~(addin[2] & addin[1]);
endmodule;