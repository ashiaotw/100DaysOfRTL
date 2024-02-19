// Hello world from sv classes

class sv_classes;
  
  function new();
    // Nothing to do here
  endfunction
  
  function void print_hello();
    $display("Hello world!\n");
  endfunction
  
endclass

// Construct the class in TB

module sv_classes_tb();
  
  sv_classes SV_CLASSES;
  
  initial begin
    SV_CLASSES = new();
    SV_CLASSES.print_hello();
    $finish();
  end
  
endmodule
