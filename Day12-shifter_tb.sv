module shifter_tb();
  
  logic 	  clk;
  logic		  reset;
  logic		  x;
  logic [3:0] out;
  
  shifter SHIFTER 	(.*);
  
  // Generate clock
  always begin
    clk <= 1'b1;
    #5;
    clk <= 1'b0;
    #5;
  end
  
  // Stimulus
  initial begin
    reset <= 1'b1;
    x <= 1'b0;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i = 0; i < 16; i = i + 1) begin
      x <= $random % 2;
      @(posedge clk);
    end
    $finish();
  end
  
  // Dump VCD
  initial begin
  	$dumpfile("shifter.vcd");
    $dumpvars(2, shifter_tb);
  end
  
endmodule
