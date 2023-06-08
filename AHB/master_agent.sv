class master_agent extends uvm_agent;
  
  `uvm_component_utils(master_agent)
  
  master_monitor m_monitor;
  master_driver m_driver;
  sequencer m_seq;
  
  function new(string name, uvm_component parent);
    super.new(name,parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    if(get_is_active == UVM_ACTIVE)
      begin
        m_driver = master_driver::type_id::create("m_driver",this);
        m_seq = sequencer::type_id::create("m_seq",this);
      end
        m_monitor = master_monitor::type_id::create("m_monitor",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    if(get_is_active == UVM_ACTIVE) 
	    begin
	      `uvm_info("master_agent", $sformatf("AGENT connect phase"), UVM_HIGH)
	       m_driver.seq_item_port.connect(m_seq.seq_item_export);
	    end
endfunction
  
endclass
    
    
