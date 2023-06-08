class test extends uvm_test;
  
  `uvm_component_utils(test)
   env envi;

    
  function new(string name = "test", uvm_component parent = null);
    super.new(name,parent);
  endfunction

  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    envi = env::type_id::create("envi", this);
  endfunction

  task run_phase(uvm_phase phase);
  	phase.raise_objection(this);
	begin
		master_sequence m_seq;
		slave_sequence s_seq;
		m_seq = master_sequence::type_id::create("m_seq", this);
		s_seq = slave_sequence::type_id::create("s_seq", this);

		m_seq.randomize();
		s_seq.randomize();

		m_seq.start(envi.m_agent.m_seq);
		s_seq.start(envi.s_agent.s_sequencer);

	
		`uvm_info("TEST", $sformatf("test started"), UVM_LOW)
	end
	phase.drop_objection(this);
  endtask
endclass
