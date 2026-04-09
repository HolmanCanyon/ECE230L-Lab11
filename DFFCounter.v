module DFFCounter(
    input Clock,
    input Reset,
    output Bit1,
    output Bit2,
    output Bit3,
    output reg Output
);

    wire Q1, Q2, Q3;
    wire D1, D2, D3;
    
    assign D1 = ~Q1;
    assign D2 = Q1 ^ Q2;
    assign D3 = (Q1 & Q2) ^ Q3;

    DFlipFlop DFlipFlop1(
        .Clock(Clock),
        .Reset(Reset | creset),
        .Q(Q1),
        .D(D1)
    );

    DFlipFlop DFlipFlop2(
        .Clock(Clock),
        .Reset(Reset| creset),
        .Q(Q2),
        .D(D2)
    );

    DFlipFlop DFlipFlop3(
        .Clock(Clock),
        .Reset(Reset| creset),
        .Q(Q3),
        .D(D3)
    );

    assign Bit1 = Q1;
    assign Bit2 = Q2;
    assign Bit3 = Q3;
    
    reg creset;
    
    

    always @(posedge Clock or posedge Reset) begin
        if (Reset)
            Output <= 0;
        else if (Q1 & ~Q2 & Q3)begin
            Output <= ~Output;
            creset <= 1;
        end else 
            creset <= 0;
    end

endmodule