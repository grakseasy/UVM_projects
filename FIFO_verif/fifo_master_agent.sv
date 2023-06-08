class fifo_master_agent extends uvm_agent;
  
  `uvm_component_utils(fifo_master_agent)
  
  master_monitor m_monitor;
  fifo_master_driver m_driver;
  uvm_sequencer#(fifo_transaction) sequencer;
  
  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE)
      begin
        m_driver = fifo_master_driver::type_id::create("m_driver",this);
        sequencer = uvm_sequencer#(fifo_transaction)::type_id::create("sequencer",this);
      end
        m_monitor = master_monitor::type_id::create("m_monitor",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if(get_is_active == UVM_ACTIVE) 
	    begin
	      `uvm_info("fifo_agent", $sformatf("AGENT connect phase"), UVM_HIGH)
	       m_driver.seq_item_port.connect(sequencer.seq_item_export);
	    end
endfunction
  
endclass
    
    
