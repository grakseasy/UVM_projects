typedef enum bit [1:0] {
  BYTE        = 2'b00, 
  HALFWORD    = 2'b01, 
  WORD        = 2'b10  
} ahb_hsize;


typedef enum bit [2:0] {
  SINGLE      = 3'b000,
  INCR        = 3'b001,
  INCR4       = 3'b011,
  INCR8       = 3'b101,
  INCR16      = 3'b111,
  WRAP4       = 3'b010,
  WRAP8       = 3'b100,
  WRAP16      = 3'b110
  } ahb_hburst;


typedef enum bit [1:0] {
  IDLE      = 2'b00,
  BUSY      = 2'b01,
  NONSEQ    = 2'b10,
  SEQ       = 2'b11
  } ahb_htrans;

class sequence_item extends uvm_sequence_item;

  `uvm_object_utils(sequence_item)

  rand bit [31:0] HADDR;
  rand ahb_hsize HSIZE;   
  rand ahb_hburst HBURST;
  rand ahb_htrans HTRANS;
  rand bit[31:0] HWDATA;  
  rand bit[31:0] HRDATA;  
  bit HREADY;
  rand bit HWRITE;

  function new(string name = "sequence_item");
    super.new(name);
  endfunction
  
  constraint hsize_constraint {
    HSIZE inside {BYTE, HALFWORD, WORD};
  }

  constraint hburst_constraint {
    HBURST inside {SINGLE, INCR, INCR4, INCR8, INCR16, WRAP4, WRAP8, WRAP16};
  }

   
endclass
