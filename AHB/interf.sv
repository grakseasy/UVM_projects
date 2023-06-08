interface interf(input bit HCLK);
  logic HWRITE;
  logic[31:0] HADDR;
  logic[2:0] HBURST;
  logic[1:0] HSIZE;
  logic HREADY; 
  logic[1:0] HTRANS; 
  logic[31:0] HRDATA;
  logic[31:0] HWDATA;
endinterface
