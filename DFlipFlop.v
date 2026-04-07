module DFlipFlop(
    input D,
    input Clock,
    input reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock)
        Q <= D;

    assign NotQ = ~Q;

    always begin
        if (~reset)
            Q <= 1'b0;
    end
endmodule