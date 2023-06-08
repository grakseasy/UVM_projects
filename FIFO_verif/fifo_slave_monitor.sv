class slave_monitor extends uvm_monitor;
  
  `uvm_component_utils(slave_monitor)
  
  virtual interf vintf;
  fifo_transaction fifo_trans;
  uvm_analysis_port #(fifo_transaction) op;
  bit pom = 0;
  
  function new(string name, uvm_component parent);
    super.new(name,parent);
    fifo_trans = new();
    op = new("op", this);
    `uvm_info("slave monitor", $sformatf("Monitor: Output"), UVM_HIGH)
  endfunction
  
 function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual interf)::get(this,"","vintf",vintf)) begin
      `uvm_error("","uvm_get_config interface failed\n");
    end
  endfunction
   
  virtual task run_phase(uvm_phase phase);
     super.run_phase(phase);
     fork
		begin
			`uvm_info("slave monitor", $sformatf("Monitor: Output"), UVM_HIGH)
			forever begin
				//wait(vintf.rst == 1);
				fifo_trans=fifo_transaction::type_id::create("fifo_trans");
				@(posedge vintf.clk);
					if(vintf.rd_en && pom == 0 && vintf.rst) begin
					   @(posedge vintf.clk);
					   pom = 1;
				   	end
					if(vintf.rd_en && vintf.wr_en && pom == 1 && vintf.rst || vintf.rd_en && !vintf.wr_en && pom == 1 && vintf.rst) begin
						fifo_trans.dout = vintf.dout;
						fifo_trans.wr_en = vintf.wr_en;
						fifo_trans.rd_en = vintf.rd_en;
						fifo_trans.empty = vintf.empty;
						fifo_trans.full = vintf.full;
						//fifo_trans.wrap_on_full = 1;
						op.write(fifo_trans);
						`uvm_info("SLAVE MONITOR", $sformatf("Monitor: Output = %0h\n", fifo_trans.dout), UVM_HIGH)
				   	end
					if(vintf.full)
						begin
							fifo_trans.full = vintf.full;
							op.write(fifo_trans);	
						end
			end
		end
		begin
			//reset
		end
     join
  endtask
endclass
       
       
       
