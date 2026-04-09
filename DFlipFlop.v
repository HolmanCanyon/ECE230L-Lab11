module DFlipFlop(
    input D,
    input clock,
    input reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge clock or posedge reset)begin
        if (clock)
            Q <= D;
        if reset Q <= 0;

    assign NotQ = ~Q;


endmodule