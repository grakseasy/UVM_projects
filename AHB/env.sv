class env extends uvm_env;

  master_agent m_agent;
  slave_agent s_agent;
  scoreboard score;

  `uvm_component_utils(env)

  function new(string name = "env", uvm_component parent);
    super.new(name, parent);
  endfunction : new

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    score = scoreboard::type_id::create("score", this);
    m_agent = master_agent::type_id::create("m_agent", this);
    s_agent = slave_agent::type_id::create("s_agent", this);
  endfunction : build_phase

  function void connect_phase(uvm_phase phase);
    super.connect_phase(phase);
    m_agent.m_monitor.item_collected_port_master.connect(score.items_master);
    s_agent.s_monitor.item_collect_port_slave.connect(score.items_slave);
    //m_agent.m_monitor.item_collected_port_master.connect(subscriber.analysis_export);
    //s_agent.s_monitor.item_collect_port_slave.connect(subscriber.analysis_export);
    `uvm_info("ENV", $sformatf("ENV connect phase"), UVM_HIGH)
  endfunction


endclass : env
