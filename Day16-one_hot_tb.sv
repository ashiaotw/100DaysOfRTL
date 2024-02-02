module one_hot_tb();
  
  localparam BIN = 4;
  localparam ONE_HOT = 16;
  
  logic [BIN-1:0] bin_in;
  logic [ONE_HOT-1:0] one_hot_out;
  
  one_hot #(BIN, ONE_HOT) ONE_HOT (.*);
  
  initial begin
    for(int i=0; i<32; i=i+1) begin
      bin_in = $urandom_rnage(0, 4'hF);
      #5;
    end
    $finish();
  end
  
  initial begin
    $dumpfile("one_hot.vcd");
    $dumpvars(2, one_hot_tb);
  end
  
endmodule
