module LOGIC_UNIT (
  input          wire        [3:0]     A    ,
  input          wire        [3:0]     B    ,
  input          wire                  S2   ,
  input          wire                  S3   ,
  output         wire        [3:0]     S
);

wire  [3:0]   OUT_AND   ;
wire  [3:0]   OUT_OR    ;
wire  [3:0]   OUT_XOR   ;
wire  [3:0]   OUT_NOT   ;

wire  [3:0]   OUT_MUX1  ;
wire  [3:0]   OUT_MUX2  ;


AND_GATE and_gate ( A , B , OUT_AND )  ;
OR_GATE  or_gate  ( A , B , OUT_OR  )  ;
XOR_GATE xor_gate ( A , B , OUT_XOR )  ;
NOT_GATE not_gate ( A , B , OUT_NOT )  ;

MUX_2_TO_1 mux3 ( OUT_AND , OUT_XOR  , S3 , OUT_MUX1 )  ;
MUX_2_TO_1 mux4 ( OUT_OR , OUT_NOT , S3 , OUT_MUX2 )  ;

MUX_2_TO_1 mux5 ( OUT_MUX1 , OUT_MUX2 , S2 , S )  ;



endmodule

module AND_GATE (
  input          wire         [3:0]      A   ,
  input          wire         [3:0]      B   ,
  output         wire         [3:0]      S  
);



and and1 ( S[0] , A[0] , B[0] )  ;
and and2 ( S[1] , A[1] , B[1] )  ;
and and3 ( S[2] , A[2] , B[2] )  ;
and and4 ( S[3] , A[3] , B[3] )  ;

endmodule

module OR_GATE (
  input          wire         [3:0]      A   ,
  input          wire         [3:0]      B   ,
  output         wire         [3:0]      S  
);



or or1 ( S[0] , A[0] , B[0] )  ;
or or2 ( S[1] , A[1] , B[1] )  ;
or or3 ( S[2] , A[2] , B[2] )  ;
or or4 ( S[3] , A[3] , B[3] )  ;

endmodule

module XOR_GATE (
  input          wire         [3:0]      A   ,
  input          wire         [3:0]      B   ,
  output         wire         [3:0]      S  
);



xor xor1 ( S[0] , A[0] , B[0] )  ;
xor xor2 ( S[1] , A[1] , B[1] )  ;
xor xor3 ( S[2] , A[2] , B[2] )  ;
xor xor4 ( S[3] , A[3] , B[3] )  ;

endmodule

module NOT_GATE (
  input          wire         [3:0]      A   ,
  input          wire         [3:0]      B   ,
  output         wire         [3:0]      S  
);



not not1 ( S[0] , B[0] )  ;
not not2 ( S[1] , B[1] )  ;
not not3 ( S[2] , B[2] )  ;
not not4 ( S[3] , B[3] )  ;

endmodule
