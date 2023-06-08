class fifo_transaction extends uvm_sequence_item;

  `uvm_object_utils(fifo_transaction)

  rand bit [7:0] din;
  rand bit wr_en;
  rand bit rd_en;
  rand bit [7:0] dout;
  bit full;
  bit empty;
  rand enum {LOW, HIGH} wrap_on_full;

  function new(string name = "");
    super.new(name);
  endfunction
  
endclass
