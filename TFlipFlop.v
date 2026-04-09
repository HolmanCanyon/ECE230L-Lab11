module TFlipFlop(
    input Clock,
   // input T,
    input Reset,
    output reg Q
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Q <= 0;
        else
            Q <= ~Q;
    end
endmodule