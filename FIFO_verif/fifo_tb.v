`timescale 1ns/100ps


module fifo_tb();

  //import uvm_pkg::*;
  //`include "uvm_macros.svh"
import fifo_pkg::*;

parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 8;
parameter FIFO_DEPTH = 1 << ADDR_WIDTH;
 
reg clk, rst, rd_en, wr_en;
reg [DATA_WIDTH-1:0] tb_data_in;
wire full, empty, wrap_on_full;
wire [DATA_WIDTH-1:0] tb_data_out;

fifo dut(
.clk(clk),
.rst_n(rst),
.rd_en(rd_en),
.wr_en(wr_en),
.data_in(tb_data_in),
.full(full),
.empty(empty),
.wrap_on_full(wrap_on_full),
.data_out(tb_data_out));

initial begin 
clk = 0;
end
 
always #1 clk = ~clk; 

initial begin
    run_test("test_example");
  end


initial begin $dumpvars; end

endmodule
