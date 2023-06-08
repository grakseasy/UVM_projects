class slave_monitor extends uvm_monitor;

  virtual interf vintf;
  uvm_analysis_port #(sequence_item) item_collect_port_slave;
  sequence_item trans;
  `uvm_component_utils(slave_monitor)
  

  function new(string name = "slave_monitor", uvm_component parent = null);
    super.new(name, parent);
    item_collect_port_slave = new("item_collect_port_slave", this);
    trans = new();
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual interf) :: get(this, "", "vintf", vintf))
      `uvm_fatal(get_type_name(), "Not set at top level");
  endfunction
   
  task run_phase (uvm_phase phase);
	  super.run_phase(phase);
		 	`uvm_info("master monitor", $sformatf("Monitor: Input\n"), UVM_HIGH)
		 	forever begin
				trans=sequence_item::type_id::create("trans");
			 	@(posedge vintf.HCLK);
						if(!vintf.HWRITE && vintf.HRDATA != 0 && vintf.HREADY /*&& vintf.HTRANS != 2'b01 && vintf.HTRANS != 2'b00 */)
							begin
								trans.HRDATA = vintf.HRDATA;
								trans.HBURST = vintf.HBURST;
								trans.HTRANS = vintf.HTRANS;
								trans.HSIZE = vintf.HSIZE;
								trans.HADDR = vintf.HADDR;
								item_collect_port_slave.write(trans);
								`uvm_info("SLAVE MONITOR", $sformatf("Monitor: Data = 0x%0h\n", trans.HRDATA), UVM_HIGH)
							end			
			end
  endtask

endclass
