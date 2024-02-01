module lfsr(
  input clk,
  input reset,
  output wire[3:0] lfsr_out
);
  
  logic [3:0] lfsr_ff;
  logic [3:0] next_lfsr;
  
  always @(posedge clk) begin
    if (reset) begin
      lfsr_ff <= 4'hE;
    end
    else begin
      lfsr_ff <= next_lfsr;
    end
  end
  
  assign next_lfsr = {lfsr_ff[2:0], lfsr_ff[1] ^ lfsr_ff[3]};
  assign lfsr_out = lfsr_ff;
  
endmodule
