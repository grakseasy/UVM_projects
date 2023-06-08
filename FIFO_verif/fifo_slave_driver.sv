
class fifo_slave_driver extends uvm_driver#(fifo_transaction);

`uvm_component_utils(fifo_slave_driver)
    
  virtual interf vintf;
  bit reset_happened;

  function new(string name, uvm_component parent);
    super.new(name, parent);  endfunction
  
   function void build_phase(uvm_phase phase);
	    super.build_phase(phase);
	    if(!uvm_config_db#(virtual interf)::get(this,"","vintf",vintf)) begin
	      `uvm_fatal("","iDriver:uvm_get_config interface failed\n");
	    end
   endfunction
  

  virtual task run_phase(uvm_phase phase);
	     /*begin
	      	@(posedge vintf.clk);
	       	forever begin
		 `uvm_info("SLAVE DRIVER", $sformatf("Slave Driver"), UVM_HIGH)
		 seq_item_port.get_next_item(req);
		 if(req.rd_en == 1 && req.wr_en == 0 && vintf.rst == 1)
			 begin
				 vintf.wr_en = req.wr_en;
				 vintf.rd_en = req.rd_en;
				 @(posedge vintf.clk);
				 	seq_item_port.item_done();
			 end
		 else if(req.rd_en == 1 && req.wr_en == 1 && vintf.rst == 1)
			 begin
				 //vintf.wr_en = req.wr_en;
				 vintf.rd_en = req.rd_en;
				 @(posedge vintf.clk);
				 	seq_item_port.item_done();
			 end 
	       end
	     end */

	@(posedge vintf.clk);
	fork
		begin
			forever begin
				wait(vintf.rst == 1);
				`uvm_info("SLAVE DRIVER", $sformatf("Slave Driver"), UVM_HIGH)
				 seq_item_port.get_next_item(req);
				 if(req.rd_en == 1 && req.wr_en == 0 && vintf.rst == 1) begin
					vintf.wr_en = req.wr_en;
					vintf.rd_en = req.rd_en;
					@(posedge vintf.clk);
					seq_item_port.item_done();
				end
				else if(req.rd_en == 1 && req.wr_en == 1 && vintf.rst == 1) begin
					//vintf.wr_en = req.wr_en;
					vintf.rd_en = req.rd_en;
					@(posedge vintf.clk);
					seq_item_port.item_done();
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
			reset_happened = 1;
			// add all signals
		end
	join
  endtask 

endclass


