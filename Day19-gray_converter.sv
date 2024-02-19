module gray_converter(
  parameter VEC_WIDTH = 4
)(
  input 	wire[VEC_WIDTH-1:0] bin_in;
  output	wire[VEC_WIDTH-1:0] gray_out
);
  
  assign gray_out[VEC_WIDTH-1] = bin_in[VEC_WIDTH-1];
  
  genvar i;
  for (i = VEC_WIDTH-2; i>=0; i=i-1)
    assign gray_out[i] = bin_in[i+1] ^ bin_in[i];
endmodule
