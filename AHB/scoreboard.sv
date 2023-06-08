`uvm_analysis_imp_decl(_master)
`uvm_analysis_imp_decl(_slave)


class scoreboard extends uvm_scoreboard;

  ahb_coverage_group ahb_cov;

  `uvm_component_utils(scoreboard)

  uvm_analysis_imp_master #(sequence_item, scoreboard) items_master;
  uvm_analysis_imp_slave #(sequence_item, scoreboard) items_slave;

  sequence_item master_q[$];
  sequence_item slave_q[$];

  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    items_master = new("items_master", this);
    items_slave = new("items_slave", this);
	//ahb_cov = ahb_coverage::type_id::create("ahb_cov", this);
 `ifdef COVERAGE_EN
		ahb_cov = new();
	`endif
  endfunction: build_phase
  
  // write
  virtual function void write_master(sequence_item transaction);
    master_q.push_back(transaction); 
    `uvm_info("SCOREBOARD", $sformatf("Item written: 0x%0h", transaction.HWDATA), UVM_HIGH)
	ahb_cov.sample(transaction);
  endfunction : write_master

  virtual function void write_slave(sequence_item transaction);
    slave_q.push_back(transaction); 
    `uvm_info("SCOREBOARD", $sformatf("Item read: 0x%0h", transaction.HRDATA), UVM_HIGH)
    `uvm_info("SCOREBOARD", $sformatf("Item HBURST: %0b", transaction.HBURST), UVM_HIGH)
    ahb_cov.sample(transaction);
  endfunction : write_slave

 
   virtual function void report_phase(uvm_phase phase);
     `uvm_info("SCOREBOARD", $sformatf("\n"), UVM_HIGH)
     `uvm_info("SCOREBOARD", $sformatf("\n\n------------------------------- COVERAGE %0.2f %% \n\n", ahb_cov.get_inst_coverage()), UVM_HIGH)
   endfunction


endclass : scoreboard

