module MUX_2_TO_1 (
  input            wire       [3:0]     A     ,
  input            wire       [3:0]     B     ,
  input            wire                 SEL   ,
  output           reg        [3:0]     OUT   
);

always @ (*)
begin
  case (SEL)
    1'b 0 :    OUT  =  A  ;
    1'b 1 :    OUT  =  B  ;
  endcase
end
endmodule 

