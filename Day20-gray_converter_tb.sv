module gray_converter_tb ();
  
  parameter VEC_WIDTH = 5;
  
  logic [VEC_WIDTH-1:0] bin_in;
  logic [VEC_WIDTH-1:0] gray_out;
  
  gray_converter #(VEC_WIDTH) GRAY_CONVERTER(.*);
  
  initial begin
    for (int i=0; i<2**VEC_WIDTH; i=i+1) begin
      bin_in = i;
      #5;
    end
    $finish();
  end
     
  initial begin
    $dumpfile("gray_converter.vcd");
    $dumpvars(2, gray_converter_tb);
  end
  
endmodule
