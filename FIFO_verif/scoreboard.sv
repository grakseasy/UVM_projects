`uvm_analysis_imp_decl(_ip)
`uvm_analysis_imp_decl(_op)

class scoreboard extends uvm_scoreboard;
  `uvm_component_utils(scoreboard)
  
  uvm_analysis_imp_ip #(fifo_transaction, scoreboard) items_collected_ip;
  uvm_analysis_imp_op #(fifo_transaction, scoreboard) items_collected_op;

  fifo_transaction items_input_q[$];
  fifo_transaction items_output_q[$];

  fifo_cg fcg;  
  fifo_transaction inp;
  fifo_transaction out;

  virtual interf vintf;
  
  bit[8:0] status_counter = 0;
  bit[15:0] wr_pointer = 0;
  bit[15:0] rd_pointer = 0;
  bit reset_happened;
  bit[15:0] index_delete = 1;
  bit[15:0] pom = 0;


  bit[15:0] size;

  function new(string name = "scoreboard", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
    items_collected_ip = new("items_collected_ip", this);
    items_collected_op = new("items_collected_op", this);
	`ifdef COVERAGE_EN
		fcg = new();
	`endif
    if(!uvm_config_db#(virtual interf)::get(this,"","vintf",vintf)) begin
	      `uvm_fatal("","iDriver:uvm_get_config interface failed\n");
	    end
  endfunction: build_phase
  
  virtual function void write_ip(fifo_transaction trans);
				fcg.sample(trans);
				if(vintf.empty == 1)
					begin
						checkFull();	
						`uvm_info("SCOREBOARD", $sformatf("Data from input = %0h", trans.din), UVM_HIGH)    
						items_input_q.push_back(trans);
						`uvm_info("SCOREBOARD", $sformatf("Input queue size = %0d, status: %0d, empty: %0d, full: %0d", items_input_q.size, status_counter, vintf.empty, vintf.full), UVM_HIGH)
					end
				else
					begin 
						`uvm_info("SCOREBOARD", $sformatf("Data from input = %0h", trans.din), UVM_HIGH)    
						if(trans.wrap_on_full == 1) //HIGH wrap
							begin
								if(status_counter < 255)
									begin
										status_counter = items_input_q.size + 1;
										items_input_q.push_back(trans);
									end
								else
									begin
										items_input_q.insert(pom, trans);
										items_input_q.delete(index_delete);

										pom++;
										index_delete++;
										`uvm_info("SCOREBOARD", $sformatf("Wrap Item: %0h, num of wrap items: %0d",  trans.din, pom), UVM_HIGH)    
										checkFull();
									end
							end
						else if(trans.wrap_on_full == 0) //LOW wrap
							begin
								if(status_counter < 255)
									begin
										status_counter = items_input_q.size + 1;
										wr_pointer = items_input_q.size;
							   	 		items_input_q[wr_pointer] = trans;
									end
								else
									begin
										checkFull();
										`uvm_info("SCOREBOARD", $sformatf("Items that exceed the FIFO limit are discarded! Queue size: %0d", items_input_q.size), UVM_HIGH)
									end
							end
						`uvm_info("SCOREBOARD", $sformatf("Input queue size = %0d, status: %0d, empty: %0d, full: %0d, reset: %0d", items_input_q.size, status_counter, vintf.empty, vintf.full, vintf.rst), UVM_HIGH)
						size = items_input_q.size; //I need this for comparing later
					end			
  endfunction : write_ip


  virtual function void write_op(fifo_transaction trans);
			fcg.sample(trans);
			items_output_q.push_back(trans);
			out = items_output_q.pop_front();
			`uvm_info("SCOREBOARD", $sformatf("Data from Output = %0h", out.dout), UVM_MEDIUM)
			`uvm_info("SCOREBOARD", $sformatf("Output queue size = %0d, status: %0d, empty: %0d", items_output_q.size, status_counter, vintf.empty), UVM_HIGH)

			inp = items_input_q.pop_front();

			if(out == null || inp == null)
				begin
					`uvm_info("SCOREBOARD", $sformatf("END OF TEST"), UVM_HIGH)
				end		
			else if(trans.dout == inp.din)
				begin
					`uvm_info("SCOREBOARD", $sformatf("Data comparing is CORRECT! INPUT == OUTPUT (%0h == %0h)", inp.din, trans.dout), UVM_HIGH)
					status_counter--;
				end
			else
				begin
					`uvm_error("SCOREBOARD", $psprintf("DATA MISSMATCH IS FOUND! INPUT != OUTPUT (%0h != %0h)",  inp.din, trans.dout));
					status_counter--;
				end
				
  endfunction : write_op
 
		
   virtual task checkReset();
	forever begin
		@(posedge vintf.clk)
				if(!vintf.rst)
					begin
						items_input_q.delete();
						items_output_q.delete();
						status_counter = items_input_q.size;
					end
	end
   endtask


   virtual task checkEmpty();
	forever begin
		@(posedge vintf.clk)
			if(status_counter == 0 && vintf.empty == 1)
				begin
					`uvm_info("SCOREBOARD", $sformatf("EMPTY feature is working, status %0d, empty %0d", status_counter, vintf.empty), UVM_MEDIUM)
				end
			if(status_counter == 0 && vintf.empty == 0)
				begin
					 `uvm_error("SCOREBOARD", $psprintf("EMPTY ERROR 1! status %0d empty %0d", status_counter, vintf.empty));
				end 
			if(status_counter != 0 && vintf.empty == 1)
				begin
					 `uvm_error("SCOREBOARD", $psprintf("EMPTY ERROR 2! status %0d empty %0d", status_counter, vintf.empty));
				end 
	end
   endtask


   virtual function void checkFull();
			if(status_counter == 255 && vintf.full == 1)
				begin
					`uvm_info("SCOREBOARD", $sformatf("FULL feature is working, status %0d, full %0d", status_counter, vintf.full), UVM_MEDIUM)
				end	
			else if(status_counter == 0 && vintf.full == 0)
				begin
					`uvm_info("SCOREBOARD", $sformatf("FULL feature is working, status %0d, full %0d", status_counter, vintf.full), UVM_MEDIUM)
				end	
			else if(status_counter == 255 && vintf.full == 0)
				begin
					 `uvm_error("SCOREBOARD", $psprintf("FULL ERROR 1! status %0d full %0d", status_counter, vintf.full));
				end	
			else if(status_counter != 255 && vintf.full == 1)
				begin
					 `uvm_error("SCOREBOARD", $psprintf("FULL ERROR 1! status %0d full %0d", status_counter, vintf.full));
				end	
   endfunction


   virtual task run_phase(uvm_phase phase);
		begin 
			checkReset();
			checkFull();
			checkEmpty();
		end	
   endtask





   virtual function void report_phase(uvm_phase phase);
     `uvm_info("SCOREBOARD", $sformatf("\n"), UVM_HIGH)
	 if(items_input_q.size == 0 && items_output_q.size == 0)
		begin
     		`uvm_info("SCOREBOARD", $sformatf("The input and output queues are empty!\n"), UVM_HIGH)
		end
	else
		begin
			`uvm_error("SCOREBOARD", $psprintf("ERROR! The queues aren't empty. Input queue size: %0d, Output queue size: %0d\n",  items_input_q.size, items_output_q.size));
		end
     `uvm_info("SCOREBOARD", $sformatf("\n\n------------------------------- COVERAGE %0.2f %% \n\n", fcg.get_inst_coverage()), UVM_HIGH)	
   endfunction
     
endclass
