`timescale 1ns/1ns

// SEQUENCERRRRRRRRRRRRRRRRRRRRRRRRRRRRR
 import uvm_pkg::*;
`include "uvm_macros.svh"
`include "fifo_interf.sv"

import fifo_pkg::*;


module fifo_tb;

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 8;
parameter FIFO_DEPTH = 1 << ADDR_WIDTH;
 
reg clk, rst, rd_en, wr_en;
reg [DATA_WIDTH-1:0] tb_data_in;
wire full, empty, wrap_on_full;
wire [DATA_WIDTH-1:0] tb_data_out;

// INTERFACE
interf dut_if(.clk(clk), .rst(rst));

fifo dut(
.clk(clk),
.rst_n(rst),
.rd_en(dut_if.rd_en),
.wr_en(dut_if.wr_en),
.data_in(dut_if.din),
.full(dut_if.full),
.empty(dut_if.empty),
.wrap_on_full(dut_if.wrap_on_full),
.data_out(dut_if.dout)
);

initial begin 
clk = 0;
forever #5 clk = ~clk; 
end
 
initial begin
rst = 0;
#5;
rst = 1;
#30;
rst = 0;
#20;
rst = 1;
#130;
rst = 0;
#20;
rst = 1;
end


initial begin
    uvm_config_db#(virtual interf)::set(null,"*","vintf",dut_if);
    run_test("");
end


initial begin 
	$dumpfile("dump.vcd"); 
	$dumpvars(0, fifo_tb); 
end

endmodule

