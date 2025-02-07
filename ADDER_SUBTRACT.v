module ADDER_SUBTRACT (
    input         wire         [3:0]         A     ,
    input         wire         [3:0]         B     ,
    input         wire                       C_IN  ,
    output        wire         [3:0]         S     ,
    output        wire                       C_OUT 
  );

  wire C1 ;
  wire C2 ;
  wire C3 ;
  

  FULL_ADDER G2 ( A[0] , B[0] , C_IN , S[0] , C1 )     ;
  FULL_ADDER G3 ( A[1] , B[1] , C1   , S[1] , C2 )     ;
  FULL_ADDER G4 ( A[2] , B[2] , C2   , S[2] , C3 )     ;
  FULL_ADDER G5 ( A[3] , B[3] , C3   , S[3] , C_OUT )  ;


endmodule

module FULL_ADDER (
    input               A     , 
    input               B     , 
    input               Cin   ,  
    output              S     , 
    output              Cout     
);

    wire   W1   ; 
    wire   W2   ;
    wire   W3   ;   

    xor xor1  (   W1    ,  A  , B    );
    xor xor2  (   S     ,  W1 , Cin  );
    and and1  (   W2    ,  A  , B    );
    and and2  (   W3    ,  W1 , Cin  );
    or  or1   (   Cout  ,  W2 , W3   );

endmodule
