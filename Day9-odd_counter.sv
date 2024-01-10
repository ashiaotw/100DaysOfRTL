module odd_counter(
  input		wire	clk,
  input		wire	reset,
  
  output logic[7:0] count
);
  
  logic [7:0] next_count;
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      count <= 8'h1;
    end
    else begin
      count <= next_count;
    end
  end
  
  assign next_count = count + 8'h2;
endmodule
