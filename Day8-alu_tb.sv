module alu_tb ();
  
  logic [7:0] a;
  logic [7:0] b;
  logic [2:0] op;
  logic [7:0] alu;
  
  alu ALU (.*);
  
  initial begin
    for (int j = 0; j < 3; j++) begin
      for (int i = 0; i < 7; i++) begin
        a = $urandom_range(0, 8'hFF);
        b = $urandom_range(0, 9'hFF);
        op = 3'(i);
        #5;
      end
    end
  end
  
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, alu_tb);
  end
endmodule
