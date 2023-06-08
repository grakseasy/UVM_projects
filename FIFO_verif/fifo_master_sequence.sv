class fifo_master_sequence extends uvm_sequence#(fifo_transaction);  

  `uvm_object_utils(fifo_master_sequence)

  function new (string name = "");
    super.new(name);
  endfunction

  task body();
			repeat(270) begin
				`uvm_do_with(req, { req.wr_en == 1; req.rd_en == 0; req.wrap_on_full == 1;})
			end

  endtask

endclass

