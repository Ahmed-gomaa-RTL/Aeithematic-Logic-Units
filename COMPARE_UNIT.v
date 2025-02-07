module COMPARE_UNIT (
  input      wire        [3:0]        A     ,
  input      wire        [3:0]        B     ,
  input      wire                     S2    ,
  input      wire                     S3    ,
  output     wire        [3:0]        OUT 
);


wire  [3:0] G   ;
wire  [3:0] S   ;
wire  [3:0] Q   ;

wire  [3:0] MUX_OUT  ;

COMPARATOR compare1 ( A , B , G , S , Q )  ;

MUX_2_TO_1 mux6 (  G  , S , S3 , MUX_OUT )  ;
MUX_2_TO_1 mux7 ( MUX_OUT , Q , S2 , OUT )  ;

endmodule 

module COMPARATOR (

    input             wire              [3:0]           A   ,
    input             wire              [3:0]           B   ,
    output            reg               [3:0]           G   ,
    output            reg               [3:0]           S   ,
    output            reg               [3:0]           Q

  );



always @ (*)
  begin
    if ( A[3] > B[3] )
          begin
            G    =   4'b 0001   ;
            S    =   0          ;
            Q    =   0          ;
          end
    else if ( A[3] == B[3] && A[2] > B[2] ) 
          begin
            G    =   4'b 0001   ;
            S    =   0          ;
            Q    =   0          ;
          end
    else if ( A[3] == B[3] && A[2] == B[2] && A[1] > B[1] ) 
          begin
            G    =   4'b 0001   ;
            S    =   0          ;
            Q    =   0          ;
          end
    else if ( A[3] == B[3] && A[2] == B[2] && A[1] == B[1] && A[0] > B[0] ) 
          begin
            G    =   4'b 0001   ;
            S    =   0          ;
            Q    =   0          ;
          end
    else if ( A[3] == B[3] && A[2] == B[2] && A[1] == B[1] && A[0] == B[0] ) 
          begin
            G    =   0          ;
            S    =   0          ;
            Q    =   4'b 0001   ;
          end
    else 
          begin
              G    =   0          ;
              S    =   4'b 0001   ;
              Q    =   0          ;
          end
end

endmodule
