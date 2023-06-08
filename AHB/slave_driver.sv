
class slave_driver extends uvm_driver#(sequence_item);

  rand bit busy;
  virtual interf vintf;
  `uvm_component_utils(slave_driver)
  
  function new(string name = "slave_driver", uvm_component parent = null);
    super.new(name, parent);
  endfunction
  
  function void build_phase(uvm_phase phase);
    super.build_phase(phase);
     if(!uvm_config_db#(virtual interf)::get(this, "", "vintf", vintf))
       `uvm_fatal("NO_VIF",{"virtual interface must be set for: ",get_full_name(),".vintf"});
  endfunction: build_phase

  virtual task run_phase(uvm_phase phase);
    @(posedge vintf.HCLK)
		forever begin  
		  seq_item_port.get_next_item(req);
		  if(req.HWRITE == 0)
			   begin
				vintf.HWRITE = 0;
				vintf.HTRANS = 0;
				vintf.HADDR  = 0;
				vintf.HRDATA = 0;
				vintf.HSIZE  = 0;
				vintf.HWDATA = 0;
					if(req.HTRANS == 2'b11) //SEQ 
						begin	
							`uvm_error("SLAVE DRIVER", "The first transfer cannot be SEQ!")
						end
					else if(req.HTRANS == 2'b10) //NONSEQ
						begin
							if(req.HBURST == 3'b000) // SINGLE
								begin
									single_burst();
								end
							else if(req.HBURST == 3'b001 || req.HBURST == 3'b011 || req.HBURST == 3'b101 || req.HBURST == 3'b111) // INCR, INCR4, INCR8, INCR16
								begin
									increment_burst(req.HBURST);
									vintf.HADDR  = 0;
									vintf.HTRANS = 0;
									vintf.HBURST = 0;
								
								end
							else if(req.HBURST == 3'b010 || req.HBURST == 3'b100 || req.HBURST == 3'b110) // WRAP4, WRAP8, WRAP16
								begin
									wrap_burst(req.HBURST);
									vintf.HADDR  = 0;
									vintf.HTRANS = 0;
									vintf.HBURST = 0;
								end
						end
				end
		@(posedge vintf.HCLK)
		seq_item_port.item_done();
		end
  endtask



  task single_burst();
		@(posedge vintf.HCLK)
		wait(vintf.HREADY == 1);
        vintf.HTRANS = req.HTRANS;
		vintf.HADDR  = req.HADDR;
		vintf.HSIZE  = req.HSIZE;
		vintf.HRDATA = req.HADDR;
		`uvm_info("SLAVE DRIVER", $sformatf("Driver: HADDR = 0x%0h", vintf.HADDR), UVM_HIGH)
		`uvm_info("SLAVE DRIVER", $sformatf("Driver: HRDATA = 0x%0h", vintf.HRDATA), UVM_HIGH)
			@(posedge vintf.HCLK)
			vintf.HADDR = 0;
			vintf.HTRANS = 0;
			vintf.HBURST = 0;
			vintf.HSIZE = 0;
  endtask


  //Finding the num of transactions for INCR bursts
  function int findNumIncr(bit [7:0] incr_type);
	int num;
	if(incr_type == 3'b001) //INCR Undefined
		begin
			num = $urandom_range(1,24);
			return num;
		end
	if(incr_type == 3'b011) //INCR4
		begin
			num = 4;
			return num;
		end
	if(incr_type == 3'b101) //INCR8
		begin
			num = 8;
			return num;
		end
	if(incr_type == 3'b111) //INCR16
		begin
			num = 16;
			return num;
		end
  endfunction : findNum  


  //------------------ INCREMENT BURST --------------
  task increment_burst(bit[7:0] incr_type);
	int num;
	num = findNumIncr(incr_type);
	vintf.HADDR = req.HADDR;
	vintf.HTRANS = 2'b10; //First one is NONSEQ 	
	vintf.HBURST = req.HBURST;
	for(int i = 0; i < num; i++)
	@(posedge vintf.HCLK)
	   begin
		   wait(vintf.HREADY == 1);
		   busy = $urandom();
		   `uvm_info("SLAVE DRIVER", $sformatf("Busy %0b", busy), UVM_HIGH)	
			if(busy)
				begin
					vintf.HTRANS = 2'b11; //The rest are SEQ 
					vintf.HRDATA = req.HADDR;	
					req.HADDR    = req.HADDR + 4; //4 because i'm always working with WORD	
					vintf.HADDR  = req.HADDR;	
					`uvm_info("SLAVE DRIVER", $sformatf("Driver: HADDR = 0x%0h", vintf.HADDR), UVM_HIGH)
					`uvm_info("SLAVE DRIVER", $sformatf("Driver: HRDATA = 0x%0h", vintf.HRDATA), UVM_HIGH)
				end
			else
				begin
					vintf.HTRANS = 2'b01;
					i--; // To re-do the current iteration, when BUSY is 1 again
				end	
		end
  endtask : increment_burst
  
  
  //Finding the size for WRAP burst
  function int findSize(bit [1:0] hsize);
	if(hsize == 2'b00)
		return 1;
	if(hsize == 2'b01)
		return 2;
	if(hsize == 2'b10)
		return 4; 
  endfunction : findSize  

  
  //Finding the num of transfers for WRAP burst
  function int findNum(bit [2:0] hburst);
	if(hburst == 3'b010)
		return 4;
	if(hburst == 3'b100)
		return 8;
	if(hburst == 3'b110)
		return 16; 
  endfunction : findNum  

  //Finding the range for WRAP burst
  function int findRange(int addrBound, bit [31:0] startAddr);
	int lowerRange;
    for(int i = 0; i<startAddr; i = i+addrBound)
		begin
			lowerRange = i;
		end
	return lowerRange;
  endfunction : findRange  


  //--------------- WRAP BURST ---------------
  task wrap_burst(bit[7:0] wrap_type);
  	int num;
    int addr_boundary;
    int upperRange;
    int lowerRange;
    int size;
	size = findSize(req.HSIZE);
	num = findNum(req.HBURST);
	addr_boundary = size * num; 

    lowerRange = findRange(addr_boundary, req.HADDR);
    upperRange = lowerRange + addr_boundary;

	vintf.HADDR = req.HADDR;
	vintf.HTRANS = 2'b10; //First one is NONSEQ 
	vintf.HBURST = req.HBURST;
	for(int i = 0; i < num; i++)
	@(posedge vintf.HCLK)
		begin
		   wait(vintf.HREADY == 1);
		    busy = $urandom();
		    `uvm_info("SLAVE DRIVER", $sformatf("Busy %0b", busy), UVM_HIGH)	
			if(busy)
				begin
					vintf.HBURST = req.HBURST;
					vintf.HWDATA = vintf.HADDR;
					vintf.HSIZE  = req.HSIZE;
					vintf.HADDR  = vintf.HADDR + size;  
					vintf.HTRANS = 2'b11; //The rest are SEQ 
					if(vintf.HADDR >= upperRange)
						begin
							vintf.HADDR = lowerRange;
						end
					`uvm_info("SLAVE DRIVER", $sformatf("Driver: HADDR = 0x%0h", vintf.HADDR), UVM_HIGH)
					`uvm_info("SLAVE DRIVER", $sformatf("Driver: HRDATA = 0x%0h", vintf.HRDATA), UVM_HIGH)
				end
			else
				begin
					vintf.HTRANS = 2'b01;
					i--; // To re-do the current iteration, when BUSY is 1 again
				end	
		end
  endtask : wrap_burst


endclass
