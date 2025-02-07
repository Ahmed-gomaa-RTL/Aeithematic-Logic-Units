module ADDER (
    input  [3:0] A,   // First 4-bit operand
    input  [3:0] B,   // Second 4-bit operand
    input        Cin, // Carry-in
    output [3:0] Sum, // 4-bit Sum output
    output       Cout // Carry-out
);

    assign {Cout, Sum} = A + B + Cin; // Perform 4-bit addition

endmodule

