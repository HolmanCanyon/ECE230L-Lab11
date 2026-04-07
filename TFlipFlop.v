module TFlipFlop(
    input Clock,
    input Reset,
    output reg Q
);

    initial begin
        Q <= 0;
    end

    always @(posedge Clock) begin
        Q <= ~Q;
    end
    
    always begin 
        if (Reset) 
            Q <= 0;
    end
endmodule