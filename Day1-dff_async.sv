module dff_async(
  input logic clk,
  input logic areset,
  input logic d,
  
  output logic q);
  
  always_ff @(posedge clk or posedge areset) begin
    if(areset) begin
      q <= 1'b0;
    end
    else begin
      q <= d;
    end
  end
  
endmodule
