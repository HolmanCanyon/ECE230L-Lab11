module DFlipFlop(
    input D,
    input Clock,
    input Reset,
    output reg Q,
    output NotQ
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Q <= 0;
        else
            Q <= D;
    end

    assign NotQ = ~Q;
endmodule