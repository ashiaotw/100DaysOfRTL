module lfsr_tb ();
  
  logic clk;
  logic reset;
  logic lfsr_out;
  
  lfsr LFSR (.*);
  
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end
  
  initial begin
    reset = 1'b1;
    @(posedge clk);
    reset = 1'b0;
    for (int i = 0; i<32; i=i+1) begin
      @(posedge clk);
    end
    $finish();
  end
     
  initial begin
    $dumpfile("lfsr.vcd");
    $dumpvars(2, lfsr_tb);
  end
endmodule
