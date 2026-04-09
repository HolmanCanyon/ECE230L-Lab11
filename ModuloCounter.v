module ModuloCounter (
    input clock,
    input reset,
    output [2:0] state,
    output reg countOut
);
    reg creset;
    wire carry[2:0], addout[2:0];
    DFlipFlop dff0(
        .clock(clock),
        .reset(creset| reset),
        .D(addout[0]),
        .Q(state[0])
    );

    full_adder fa0 (
        .A(state[0]),
        .B(1'b1),
        .Cin(1'b0),
        .Y(addout[0]),
        .Cout(carry[0])
    );

    DFlipFlop dff1(
        .clock(clock),
        .reset(creset| reset),
        .D(addout[1]),
        .Q(state[1])
    );

    full_adder fa1 (
        .A(state[1]),
        .B(1'b0),
        .Cin(carry[0]),
        .Y(addout[1]),
        .Cout(carry[1])
    );

    DFlipFlop dff2(
        .clock(clock),
        .reset(creset | reset),
        .D(addout[2]),
        .Q(state[2])
    );

    full_adder fa2 (
        .A(state[2]),
        .B(1'b0),
        .Cin(carry[1]),
        .Y(addout[2]),
        .Cout(carry[2])
    );
    
    
    



    always @(posedge clock) begin
        if (state[2] & state[1] & state[0])begin
            countOut = 1;
            creset = 1;
        end else creset = 0;
        
    end
endmodule
    
