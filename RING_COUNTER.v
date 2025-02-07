module RING_COUNTER (
    input CLK,       // Clock input
    input RST,       // Reset input
    output reg [3:0] Q // 4-bit output
);

    // On the rising edge of the clock or reset, update the ring counter
    always @(posedge CLK or posedge RST) begin
        if (RST) begin
            Q <= 4'b0001; // Initialize the counter with a single "1"
        end else begin
            Q <= {Q[2:0], Q[3]}; // Shift the bits and rotate
        end
    end

endmodule

