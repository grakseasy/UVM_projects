interface interf(input bit clk, input bit rst);
  logic[7:0] din;
  logic[7:0] dout;
  logic wr_en;
  logic rd_en;
  logic full; 
  logic empty; 
  logic wrap_on_full;
endinterface
