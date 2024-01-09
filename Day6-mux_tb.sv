module mux_tb();
  
  logic [7:0] a;
  logic [7:0] b;
  logic 	  sel;
  logic [7:0] out;
  
  //Instantiate the RTL
  mux MUX(.*);
  
  //Drive Stimulus
  initial begin
    for (int i = 0; i < 10; i++) begin
      a = $urandom_range (0, 8'hff);
      b = $urandom_range (0, 8'hff);
      sel = $random%2;
      #5;
    end
  end
  
  //Dump VCD file
  initial begin
    $dumpfile("mux.vcd");
    $dumpfile(0, mux_tb);
  end
  
endmodule
