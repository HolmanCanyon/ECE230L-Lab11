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

    always @(posedge clock)
        Q <= D;

    assign NotQ = ~Q;

    always begin
        if (~reset)
            Q <= 1'b0;
    end
endmodule