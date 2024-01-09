module tb_dff_async();
  
  logic clk;
  logic areset;
  logic d;
  
  logic q;
  
  tb_dff_async TB_DFF_ASYNC(.*);
  
  //Generate clk
  always begin
    clk = 1'b1;
    #5;
    clk = 1'b1;
    #5;
  end
  
  //Stimulus
  initial begin
    reset = 1'b1;
    d = 1'b0;
    @(posedge clk);
    reset = 1'b0;
    @(posedge clk);
    d = 1'b1;
    @(posedge clk);
    @(posedge clk);
    @(negedge clk);
    reset = 1'b1;
    @(posedge clk);
    @(posedge clk);
	reset = 1'b0;
    @(posedge clk);
    @(posedge clk);
    $finish();
  end
  
  //Dump VCD
  initial begin
    $dumpfile("dff_async.vcd");
    $dumpvars(0, tb_dff_async);
  end
  
endmodule
