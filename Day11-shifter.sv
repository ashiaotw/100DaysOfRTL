module shifter(
  input 	wire	  clk,
  input		wire	  reset,
  input		wire 	  x,
  
  output    wire[3:0] out
);
  
  logic [3:0] serial_ff;
  logic [3:0] next_serial;
  
  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      serial_ff <= 4'h0;
    end
    else begin
      serial_ff <= next_serial;
    end
  end
  
  assign next_serial = {serial_ff[2:0], x};
  assign out = serial_ff;
  
endmodule
