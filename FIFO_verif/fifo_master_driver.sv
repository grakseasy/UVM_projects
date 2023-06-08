
class fifo_master_driver extends uvm_driver#(fifo_transaction);

`uvm_component_utils(fifo_master_driver)
    
  virtual interf vintf;

  function new(string name, uvm_component parent);
    super.new(name, parent);
  endfunction
  
   function void build_phase(uvm_phase phase);
	    super.build_phase(phase);
	    if(!uvm_config_db#(virtual interf)::get(this,"","vintf",vintf)) begin
	      `uvm_fatal("","iDriver:uvm_get_config interface failed\n");
	    end
   endfunction
  

  virtual task run_phase(uvm_phase phase);
	@(posedge vintf.clk);
	fork
		begin
			forever begin
				wait(vintf.rst == 1);
				if(vintf.rst) begin
					seq_item_port.get_next_item(req);
					if(req.wr_en && !req.rd_en) begin
							vintf.din = req.din;
						 	vintf.wr_en = req.wr_en;
						 	vintf.rd_en = req.rd_en;
							vintf.wrap_on_full = req.wrap_on_full;
						 	@(posedge vintf.clk);
							 	`uvm_info("MASTER DRIVER", $sformatf("Master Driver: Received din = %0h, reset: %0d\n", vintf.din, vintf.rst), UVM_HIGH)
								seq_item_port.item_done();
					end
				end
			end
		end
		begin
			wait(vintf.rst == 0);
			vintf.din = 0;
			vintf.dout = 0;
		 	vintf.wr_en = 0;
		 	vintf.rd_en = 0;
			vintf.wrap_on_full = 0; 
			// add all signals
		end
	join

  endtask 
endclass

