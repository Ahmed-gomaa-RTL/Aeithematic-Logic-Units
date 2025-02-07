module DECODER_2_TO_4 (
    input  [1:0] A,   // 2-bit input
    output [3:0] Y    // 4-bit output
);

    // Generate 4 output lines based on 2-bit input
    assign Y = (1 << A); 

endmodule

