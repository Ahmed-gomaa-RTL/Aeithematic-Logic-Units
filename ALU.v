module ALU ();


wire     [3:0]     A  ;
wire     [3:0]     B  ;
wire     [3:0]     S  ;

wire     [3:0]     OUT_ARITHMETIC    ;
wire               C_OUT             ;
wire     [3:0]     OUT_LOGIC         ;
wire     [3:0]     OUT_COMPARE       ;


wire     [3:0]     OUT_FMUX   ;
wire     [3:0]     F          ;

wire               CLK        ;
wire     [3:0]     SAVE       ;


ARITHMETIC_UNIT BLOCK1 ( A  , B  , S[2]  , S[3]  , OUT_ARITHMETIC  , C_OUT )   ;
LOGIC_UNIT BLOCK2      ( A  , B  , S[2]  , S[3]  , OUT_LOGIC )  ;
COMPARE_UNIT BLOCK3    ( A  , B  , S[2]  , S[3]  , OUT_COMPARE )  ;


MUX_2_TO_1 MUXF ( OUT_LOGIC  , OUT_COMPARE  , S[1] , OUT_FMUX )  ;
MUX_2_TO_1 MUXL ( OUT_ARITHMETIC  , OUT_FMUX  , S[0] , F )  ;


REGISTER BLOCK4 ( F  ,  CLK  , SAVE )  ;


endmodule
