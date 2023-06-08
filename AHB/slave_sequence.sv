class slave_sequence extends uvm_sequence#(sequence_item);  

  `uvm_object_utils(slave_sequence)

  function new (string name = "");
    super.new(name);
  endfunction

  task body();
		repeat(50) begin
			`uvm_do_with(req, {req.HWRITE == 0; req.HTRANS == 2'b10;})
		end 
	       /*
	       	`uvm_do_with(req, {req.HWRITE == 0; req.HADDR == 'h34;  req.HTRANS == 2'b10;})
	       	`uvm_do_with(req, {req.HWRITE == 0; req.HADDR == 'h34;  req.HTRANS == 2'b10;})
	       	`uvm_do_with(req, {req.HWRITE == 0; req.HADDR == 'h66;  req.HTRANS == 2'b10;}) 
*/
  endtask

endclass

