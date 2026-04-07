module DFlipFlop(
    input D,
    input Clock,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock)
        Q <= D;

    assign NotQ = ~Q;
endmodule