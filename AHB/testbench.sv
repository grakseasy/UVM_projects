import uvm_pkg::*;
`include "uvm_macros.svh"
`include "interf.sv"
import ahb_pkg::*;

module testbench;

  bit clk;
  interf vintf(clk);

  initial begin 
 	clk = 0;
  	forever #5 clk = ~clk; 
  end
  
  initial begin

	vintf.HREADY = 1;
	#95;
	vintf.HREADY = 0;
	#30;
	vintf.HREADY = 1;
	#60;
	vintf.HREADY = 0;
	#20;
	vintf.HREADY = 1;

  end
  
  
  initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vintf", vintf);
    run_test();
  end
  
  initial begin
    $dumpfile("dump.vcd"); 
    $dumpvars(0, testbench);
  end
  
endmodule
