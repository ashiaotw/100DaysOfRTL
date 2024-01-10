module alu(
  input		logic [7:0] a;
  input		logic [7:0] b;
  input 	logic [2:0] op;
  
  output 	logic [7:0] alu
);
  
  // Enum for ALU op
  localparam  OP_ADD = 3'b000;
  localparam  OP_SUB = 3'b001;
  localparam  OP_SLL = 3'b010;
  localparam  OP_LSR = 3'b011;
  localparam  OP_AND = 3'b100;
  localparam  OP_OR  = 3'b101;
  localparam  OP_XOR = 3'b110;
  localparam  OP_EQL = 3'b111;
  
  logic carry;
  
  always_comb begin
    case(op)
      OP_ADD: {carry, alu} = {1'b0, a} + {1'b0, b};
      OP_SUB: alu = a - b;
      OP_SLL: alu = a[7:0] << b[2:0];
      OP_LSR: alu = a[7:0] >> b[2:0];
      OP_AND: alu = a[7:0] & b[7:0];
      OP_OR: alu = a | b;
      OP_XOR: alu = a ^ b;
      OP_EQL: alu = {7'h0, a == b};
    endcase
  end
endmodule
