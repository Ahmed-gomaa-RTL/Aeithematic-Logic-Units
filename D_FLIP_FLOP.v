module D_FLIP_FLOP (
    input D,      // Data input
    input CLK,    // Clock input
    input RST,    // Reset input (optional)
    output reg Q  // Output
);

    // On the rising edge of the clock or when reset is active, change state
    always @(posedge CLK or posedge RST) begin
        if (RST)          // If reset is active, set Q to 0
            Q <= 0;
        else              // Otherwise, Q follows D
            Q <= D;
    end

endmodule

