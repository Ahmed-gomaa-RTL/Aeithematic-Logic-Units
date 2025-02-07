module SR_LATCH (
    input S,     // Set input
    input R,     // Reset input
    output Q,    // Output
    output Q_n   // Complementary output
);

    // SR Latch behavior using NOR gates
    assign Q = ~(S | Q_n);    // NOR logic for Q
    assign Q_n = ~(R | Q);    // NOR logic for Q_n

endmodule

