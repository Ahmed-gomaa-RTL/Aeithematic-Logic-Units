module SUBTRACTOR (
    input  [3:0] A,   // Minuend
    input  [3:0] B,   // Subtrahend
    input        Cin, // Carry-in (used for borrow)
    output [3:0] Diff, // Difference output
    output       Cout  // Carry-out (Borrow-out)
);

    wire [3:0] B_comp; // Two's complement of B
    wire Carry;  

    // Compute Two's Complement of B (Invert + 1)
    assign B_comp = ~B + 1;

    // Perform Addition (A - B = A + (-B))
    assign {Cout, Diff} = A + B_comp + Cin;

endmodule

