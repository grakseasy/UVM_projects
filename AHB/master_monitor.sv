class master_monitor extends uvm_monitor;
  `uvm_component_utils(master_monitor)
  //Virtual Interface
  virtual interf vintf;
  sequence_item trans;

  uvm_analysis_port #(sequence_item) item_collected_port_master;

  //New - constructor
  function new (string name, uvm_component parent);
    super.new(name, parent);
    item_collected_port_master = new("item_collected_port_master", this);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(!uvm_config_db#(virtual interf)::get(this, "", "vintf", vintf))
       `uvm_fatal("NOVIF",{"virtual interface must be set for: ",get_full_name(),".vintf"});
  endfunction: build_phase

  //Run phase
  virtual task run_phase(uvm_phase phase);
	  super.run_phase(phase);
		 	`uvm_info("master monitor", $sformatf("Monitor: Input\n"), UVM_HIGH)
		 	forever begin
				trans=sequence_item::type_id::create("trans");
			 	@(posedge vintf.HCLK);
						if(vintf.HWRITE && vintf.HWDATA != 0 && vintf.HREADY)
							begin
								trans.HWDATA = vintf.HWDATA;
								trans.HBURST = vintf.HBURST;
								trans.HTRANS = vintf.HTRANS;
								trans.HSIZE = vintf.HSIZE;
								trans.HADDR = vintf.HADDR;
								item_collected_port_master.write(trans);
								`uvm_info("MASTER MONITOR", $sformatf("Monitor: Data = 0x%0h\n", trans.HWDATA), UVM_HIGH)
							end			
			end
  endtask : run_phase

endclass : master_monitor
