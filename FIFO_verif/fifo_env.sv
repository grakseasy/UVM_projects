class fifo_env extends uvm_env;
  
  `uvm_component_utils(fifo_env)
  
  function new(string name = "fifo_env", uvm_component parent);
    super.new(name,parent);
  endfunction
  
  fifo_master_agent m_agent;
  fifo_slave_agent s_agent; 
  scoreboard my_sc;
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    my_sc = scoreboard::type_id::create("my_sc", this);
    m_agent=fifo_master_agent::type_id::create("m_agent",this);
    s_agent=fifo_slave_agent::type_id::create("s_agent",this);
  endfunction
  
  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    m_agent.m_monitor.ip.connect(my_sc.items_collected_ip);
    s_agent.s_monitor.op.connect(my_sc.items_collected_op);
    `uvm_info("fifo_env", $sformatf("ENV connect phase"), UVM_HIGH)
  endfunction
  
endclass
    
