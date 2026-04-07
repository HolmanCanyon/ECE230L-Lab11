module TFlipFlop(
    input Clock,
    output reg Q,
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock) begin
        Q <= ~Q;
    end
endmodule