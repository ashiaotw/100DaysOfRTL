module edge_detector(
  input wire clk,
  input wire reset,
  input wire a_i,
  
  output wire rising_edge_out,
  output wire falling_edge_out
);
  logic a_ff;
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      a_ff <= 1'b0;
    end
  	else begin
      a_ff <= a_i;
    end
  end
  
  //Rising edge when delayed signal is 0 but current is 1
  assign rising_edge_out = ~a_ff & a_i;
  
  //Falling edge when delayed signal is 1 but current is 0
  assign falling_edge_out = a_ff & ~a_i;
  
endmodule
