module MULTIPLIER (
    input  [3:0] A,   // First 4-bit operand
    input  [3:0] B,   // Second 4-bit operand
    output [7:0] P    // 8-bit Product output
);

    assign P = A * B; // Perform 4-bit multiplication

endmodule
