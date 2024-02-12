// A simple hello world using uvm_test

`include "uvm_macros.svh"

// Import uvm_pkg
import uvm_pkg::*;

class day17_uvm_hello extends uvm_test;
  
  // Register with factory
  `uvm_component_utils(day17_uvm_hello)
  
  // Call super.new in the new function
  function new (string name, uvm_component parent);
    super.new(name, paremt);
  endfunction
  
  // Display hello world in the run_phase
  virtual task run_phase (uvm_phase phase);
    `uvm_info("Day17_uvm_hello", "Hello, world!", UVM_LOW);
  endtask
  
  // Print topology at the end of elaboration
  virtual function void
    end_of_elaboration_phase (uvm_phase phase);
    uvm_top.print_topology();
  endfunction
  
endclass

// Call the run_test in the TB
module day17_uvm_hello_tb ();
  
  initial begin
    run_test ("day17_uvm_hello");
  end
  
endmodule
