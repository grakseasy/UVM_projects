class m_sequencer extends uvm_sequencer;

   `uvm_sequencer_utils(m_sequencer)
     
  function new (string name, uvm_component parent);
    super.new(name, parent);
  endfunction : new

endclass : m_sequencer
