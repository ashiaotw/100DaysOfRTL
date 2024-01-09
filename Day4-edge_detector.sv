module edge_detector_tb ():
  logic clk;
  logic reset;
  
  logic a_i;
  
  logic rising_edge_out;
  logic falling_edge_out;
  
  edge_detector EDGE_DETECTOR (.*);
  
  //clk
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end
  
  //Stimulus
  initial begin
    reset <= 1'b1;
    a_i <= 1'b1;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i=0; i<32; i++) begin
      a_i <= $random%2;
      @(posedge clk);
    end
    $finish();
  end
  
  //Dump VCD
  initial begin
    $dumpfile("edge_detector.vcd");
    $dumpvars(o, edge_detector_tb);
  end
endmodule
