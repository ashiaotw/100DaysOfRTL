module odd_counter_tb ();
   
  logic clk;
  logic reset;
  
  logic [7:0] count;
  odd_counter ODD_COUNTER (.*);
  
  always begin
    clk = 1'b0;
    #5;
    clk = 1'b1;
    #5;
  end
  
  initial begin
    reset <= 1'b1;
    @(posedge clk);
    @(posedge clk);
    reset <= 1'b0;
    for (int i = 0; i < 32; i++) begin
      @(posedge clk);
      $finish();
    end
  end
  
  initial begin
    $dumpfile("odd_counter.vcd");
    $dumpvars(0, odd_counter_tb);
  end
  
endmodule
