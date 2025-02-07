module ARITHMETIC_UNIT (
  input          wire        [3:0]          A     ,
  input          wire        [3:0]          B     ,
  input          wire                       S2    ,
  input          wire                       S3    ,
  output         wire        [3:0]          S     ,
  output         wire                       C_OUT 

);

wire [3:0]  OUT_MUX1 ;
wire [3:0]  OUT_MUX2 ;


MUX_2_TO_1 mux1 ( A , 4'b 0000 , S2 , OUT_MUX1 ) ;
MUX_2_TO_1 mux2 ( B ,    ~B    , S3 , OUT_MUX2 ) ;


ADDER_SUBTRACT out ( OUT_MUX1 , OUT_MUX2 , S3 , S , C_OUT ) ;



endmodule

