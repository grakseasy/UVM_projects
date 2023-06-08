class fifo_slave_sequence extends uvm_sequence#(fifo_transaction);  

  `uvm_object_utils(fifo_slave_sequence)

  function new (string name = "");
    super.new(name);
  endfunction
 
  task body();
		repeat(270) begin
		   `uvm_do_with(req, { req.wr_en == 0; req.rd_en == 1;})
		end
		   #10;
  endtask
endclass

