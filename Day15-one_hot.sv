module one_hot#(
  parameter BIN = 4,
  parameter ONE_HOT = 16
)(
  input		wire[BIN-1:0] 		bin_in,
  output 	wire[ONE_HOT-1:0] 	one_hot_out
);
  assign one_hot_out = 1'b1<<bin_in;
  
endmodule
