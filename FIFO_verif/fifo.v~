module fifo (
    clk         ,    // Clock
    rst_n       ,    // Reset
    wrap_on_full,    // Full fifo mod select
    rd_en       ,    // Read enable
    wr_en       ,    // Write enable
    data_in     ,    // Data input
    data_out    ,    // Data output
    empty       ,    // FIFO empty
    full             // FIFO full
);

// FIFO constants
parameter DATA_WIDTH = 8;
parameter ADDR_WIDTH = 8;
parameter FIFO_DEPTH = (1 << ADDR_WIDTH);

// Port Declarations
input                    clk;
input                    rst_n;
input                    wrap_on_full;
input                    rd_en;
input                    wr_en;
input  [DATA_WIDTH-1:0]  data_in;

output                   full;
output                   empty;
output [DATA_WIDTH-1:0]  data_out;

// Internal variables
reg [DATA_WIDTH-1:0]    mem [0:FIFO_DEPTH-1];
reg [ADDR_WIDTH-1:0]    wr_pointer = {ADDR_WIDTH{1'b0}};
reg [ADDR_WIDTH-1:0]    rd_pointer = {ADDR_WIDTH{1'b0}};
reg [ADDR_WIDTH-1:0]    status_cnt = {ADDR_WIDTH{1'b0}};
reg [DATA_WIDTH-1:0]    data_out;

wire                    mod_sel;

// Variable assignments
assign full  = (status_cnt == (FIFO_DEPTH-1));
assign empty = (status_cnt == 0);
assign mod_sel = ~full | wrap_on_full;     // wrap or block logic for write pointer

/////////////////  WRITE POINTER(DATA IN) //////////////////
always @ (posedge clk or negedge rst_n)
begin : WRITE_POINTER
  if (~rst_n)
      begin
          wr_pointer <= {ADDR_WIDTH{1'b0}};
      end
  else if (wr_en && ~rd_en) 
           begin
               if (~full)    
                   begin
                       wr_pointer <= wr_pointer + 1'b1;
                   end
               else
                   begin
                       wr_pointer <= wr_pointer;
                   end
           end
end

/////////////////         DATA IN         //////////////////
always @ (posedge clk or negedge rst_n)
begin
  if (~rst_n)
      begin
          
      end
  else if (wr_en && ~rd_en) 
           begin
               if (~full)
                   begin
                      mem[wr_pointer] <= data_in;
                   end
               else
                   begin
                   
                   end
           end
end

/////////////////  READ POINTER(DATA OUT) //////////////////
always @ (posedge clk or negedge rst_n)
begin : READ_POINTER
  if (~rst_n) 
      begin
          rd_pointer <= rd_pointer;
      end
  else if (rd_en) 
           begin
               if (~empty)
                   begin
                       rd_pointer <= rd_pointer + 1;
                   end
               else
                   begin
                       rd_pointer <= rd_pointer;
                   end
           end
end
/////////////////         DATA OUT        //////////////////
always @ (posedge clk or negedge rst_n)
begin
  if (~rst_n) 
      begin
          data_out   <= {DATA_WIDTH{1'b0}};
      end
  else if (rd_en) 
           begin
               if (~empty)
                   begin
                       data_out <= mem[rd_pointer];
                   end
               else
                   begin
                       data_out <= {DATA_WIDTH{1'b0}};
                   end
           end
end

/////////////////////// STATUS REG /////////////////////////
always @ (posedge clk or negedge rst_n)
begin : STATUS_COUNTER
  if (~rst_n)
      begin
          status_cnt <= {ADDR_WIDTH{1'b0}};
      end
  // Read but no write.
  else if (rd_en &&  (status_cnt != 0) && ~empty)
           begin
               status_cnt <= status_cnt - 1;
           end
  // Write but no read.
       else if (wr_en && !rd_en && (status_cnt != FIFO_DEPTH) && ~full)
                begin
                    status_cnt <= status_cnt + 1;
                end
end

endmodule

