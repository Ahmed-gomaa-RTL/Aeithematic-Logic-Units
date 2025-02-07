module REGISTER (
  input        wire       [3:0]      IN    ,
  input        wire                  CLK   ,
  output       reg        [3:0]      OUT             
);


always @ ( posedge CLK )
begin
  OUT <= IN  ;
end


endmodule
