
`timescale 1 ns / 1 ps

	module reg_wr_axil #
	(
		// Users to add parameters here

		// User parameters ends
		// Do not modify the parameters beyond this line

		// Width of S_AXI_LITE data bus
		parameter integer C_S_AXI_LITE_DATA_WIDTH	= 32,
		// Width of S_AXI_LITE address bus
		parameter integer C_S_AXI_LITE_ADDR_WIDTH	= 7
	)
	(
		//----------------------------------------------
		// User to add ports here
		input       [319:0] reg_bus_i,
		output      [319:0] reg_bus_o,
		// User ports ends
		//----------------------------------------------

		// Do not modify the ports beyond this line
		// Global Clock Signal
		input wire  												S_AXI_LITE_ACLK,
		// Global Reset Signal. This Signal is Active LOW
		input wire  												S_AXI_LITE_ARESETN,
		// Write address (issued by master, acceped by Slave)
		input wire [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] 					S_AXI_LITE_AWADDR,
		// Write channel Protection type. This signal indicates the
    		// privilege and security level of the transaction, and whether
    		// the transaction is a data access or an instruction access.
		input wire [2 : 0] 											S_AXI_LITE_AWPROT,
		// Write address valid. This signal indicates that the master signaling
    		// valid write address and control information.
		input wire  												S_AXI_LITE_AWVALID,
		// Write address ready. This signal indicates that the slave is ready
    		// to accept an address and associated control signals.
		output wire  												S_AXI_LITE_AWREADY,
		// Write data (issued by master, acceped by Slave) 
		input wire [C_S_AXI_LITE_DATA_WIDTH-1 : 0] 					S_AXI_LITE_WDATA,
		// Write strobes. This signal indicates which byte lanes hold
    		// valid data. There is one write strobe bit for each eight
    		// bits of the write data bus.    
		input wire [(C_S_AXI_LITE_DATA_WIDTH/8)-1 : 0] 				S_AXI_LITE_WSTRB,
		// Write valid. This signal indicates that valid write
    		// data and strobes are available.
		input wire  												S_AXI_LITE_WVALID,
		// Write ready. This signal indicates that the slave
    		// can accept the write data.
		output wire  												S_AXI_LITE_WREADY,
		// Write response. This signal indicates the status
    		// of the write transaction.
		output wire [1 : 0] 										S_AXI_LITE_BRESP,
		// Write response valid. This signal indicates that the channel
    		// is signaling a valid write response.
		output wire  												S_AXI_LITE_BVALID,
		// Response ready. This signal indicates that the master
    		// can accept a write response.
		input wire  												S_AXI_LITE_BREADY,
		// Read address (issued by master, acceped by Slave)
		input wire [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] 					S_AXI_LITE_ARADDR,
		// Protection type. This signal indicates the privilege
    		// and security level of the transaction, and whether the
    		// transaction is a data access or an instruction access.
		input wire [2 : 0] 											S_AXI_LITE_ARPROT,
		// Read address valid. This signal indicates that the channel
    		// is signaling valid read address and control information.
		input wire  												S_AXI_LITE_ARVALID,
		// Read address ready. This signal indicates that the slave is
    		// ready to accept an address and associated control signals.
		output wire  												S_AXI_LITE_ARREADY,
		// Read data (issued by slave)
		output wire [C_S_AXI_LITE_DATA_WIDTH-1 : 0] 				S_AXI_LITE_RDATA,
		// Read response. This signal indicates the status of the
    		// read transfer.
		output wire [1 : 0] 										S_AXI_LITE_RRESP,
		// Read valid. This signal indicates that the channel is
    		// signaling the required read data.
		output wire  												S_AXI_LITE_RVALID,
		// Read ready. This signal indicates that the master can
    		// accept the read data and response information.
		input wire  												S_AXI_LITE_RREADY
	);

	// AXIL4LITE signals
	reg [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] 	axil_awaddr;
	reg  									axil_awready;
	reg  									axil_wready;
	reg [1 : 0] 							axil_bresp;
	reg  									axil_bvalid;
	reg [C_S_AXI_LITE_ADDR_WIDTH-1 : 0] 	axil_araddr;
	reg  									axil_arready;
	reg [C_S_AXI_LITE_DATA_WIDTH-1 : 0] 	axil_rdata;
	reg [1 : 0] 							axil_rresp;
	reg  									axil_rvalid;

	// Example-specific design signals
	// local parameter for addressing 32 bit / 64 bit C_S_AXI_LITE_DATA_WIDTH
	// ADDR_LSB is used for addressing 32/64 bit registers/memories
	// ADDR_LSB = 2 for 32 bits (n downto 2)
	// ADDR_LSB = 3 for 64 bits (n downto 3)
	localparam integer ADDR_LSB 			= (C_S_AXI_LITE_DATA_WIDTH/32) + 1;
	localparam integer OPT_MEM_ADDR_BITS 	= 4;
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 20
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg0;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg1;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg2;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg3;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg4;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg5;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg6;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg7;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg8;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg9;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg10;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg11;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg12;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg13;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg14;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg15;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg16;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg17;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg18;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	slv_reg19;
	wire	 							slv_reg_rden;
	wire	 							slv_reg_wren;
	reg [C_S_AXI_LITE_DATA_WIDTH-1:0]	reg_data_out;
	integer	 							byte_index;
	reg	 								aw_en;

	// I/O Connections assignments

	assign S_AXI_LITE_AWREADY	= axil_awready;
	assign S_AXI_LITE_WREADY	= axil_wready;
	assign S_AXI_LITE_BRESP		= axil_bresp;
	assign S_AXI_LITE_BVALID	= axil_bvalid;
	assign S_AXI_LITE_ARREADY	= axil_arready;
	assign S_AXI_LITE_RDATA		= axil_rdata;
	assign S_AXI_LITE_RRESP		= axil_rresp;
	assign S_AXI_LITE_RVALID	= axil_rvalid;
	// Implement axil_awready generation
	// axil_awready is asserted for one S_AXI_LITE_ACLK clock cycle when both
	// S_AXI_LITE_AWVALID and S_AXI_LITE_WVALID are asserted. axil_awready is
	// de-asserted when reset is low.

	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_awready <= 1'b0;
	      	aw_en <= 1'b1;
	    end 
	  	else begin    
	      	if (~axil_awready && S_AXI_LITE_AWVALID && S_AXI_LITE_WVALID && aw_en) begin
	          	// slave is ready to accept write address when 
	          	// there is a valid write address and write data
	          	// on the write address and data bus. This design 
	          	// expects no outstanding transactions. 
	          	axil_awready <= 1'b1;
	          	aw_en <= 1'b0;
	        end
	        else if (S_AXI_LITE_BREADY && axil_bvalid) begin
	            aw_en <= 1'b1;
	            axil_awready <= 1'b0;
	        end
	      	else begin
	          	axil_awready <= 1'b0;
	        end
	    end 
	end       

	// Implement axil_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_LITE_AWVALID and S_AXI_LITE_WVALID are valid. 

	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_awaddr <= 0;
	    end 
	  	else begin    
	      	if (~axil_awready && S_AXI_LITE_AWVALID && S_AXI_LITE_WVALID && aw_en) begin
	          	// Write Address latching 
	          	axil_awaddr <= S_AXI_LITE_AWADDR;
	        end
	    end 
	end       

	// Implement axil_wready generation
	// axil_wready is asserted for one S_AXI_LITE_ACLK clock cycle when both
	// S_AXI_LITE_AWVALID and S_AXI_LITE_WVALID are asserted. axil_wready is 
	// de-asserted when reset is low. 

	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_wready <= 1'b0;
	    end 
	  	else begin    
	      	if (~axil_wready && S_AXI_LITE_WVALID && S_AXI_LITE_AWVALID && aw_en ) begin
	          	// slave is ready to accept write data when 
	          	// there is a valid write address and write data
	          	// on the write address and data bus. This design 
	          	// expects no outstanding transactions. 
	          	axil_wready <= 1'b1;
	        end
	      	else begin
	          	axil_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axil_awready, S_AXI_LITE_WVALID, axil_wready and S_AXI_LITE_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axil_wready && S_AXI_LITE_WVALID && axil_awready && S_AXI_LITE_AWVALID;

	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
//	      	slv_reg0 <= 0;
//	      	slv_reg1 <= 0;
//	      	slv_reg2 <= 0;
//	      	slv_reg3 <= 0;
//	      	slv_reg4 <= 0;
//	      	slv_reg5 <= 0;
//	      	slv_reg6 <= 0;
//	      	slv_reg7 <= 0;
//	      	slv_reg8 <= 0;
//	      	slv_reg9 <= 0;
	      	slv_reg10 <= 0;
	      	slv_reg11 <= 0;
	      	slv_reg12 <= 0;
	      	slv_reg13 <= 0;
	      	slv_reg14 <= 0;
	      	slv_reg15 <= 0;
	      	slv_reg16 <= 0;
	      	slv_reg17 <= 0;
	      	slv_reg18 <= 0;
	      	slv_reg19 <= 0;
	    end 
	  	else if (slv_reg_wren) begin
	    	case ( axil_awaddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
//	          	5'h00:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	      		// Respective byte enables are asserted as per write strobes 
//	          	      		// Slave register 0
//	          	      		slv_reg0[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	    	end  
//	          	5'h01:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	      		// Respective byte enables are asserted as per write strobes 
//	          	      		// Slave register 1
//	          	      		slv_reg1[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	    	end  
//	          	5'h02:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	      		// Respective byte enables are asserted as per write strobes 
//	          	      		// Slave register 2
//	          	      		slv_reg2[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	   		end  
//	          	5'h03:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	  	    	// Respective byte enables are asserted as per write strobes 
//	          	  	    	// Slave register 3
//	          	  	    	slv_reg3[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	  	  	end  
//	          	5'h04:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	  	  	  	// Respective byte enables are asserted as per write strobes 
//	          	  	  	  	// Slave register 4
//	          	  	  	  	slv_reg4[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	  	  	end  
//	          	5'h05:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	  	  	  	// Respective byte enables are asserted as per write strobes 
//	          	  	  	  	// Slave register 5
//	          	  	  	  	slv_reg5[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	  	  	end  
//	          	5'h06:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	    	  	// Respective byte enables are asserted as per write strobes 
//	          	    	  	// Slave register 6
//	          	    	  	slv_reg6[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	    	end  
//	          	5'h07:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	    	  	// Respective byte enables are asserted as per write strobes 
//	          	    	  	// Slave register 7
//	          	    	  	slv_reg7[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	    	end  
//	          	5'h08:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	  	  	  	// Respective byte enables are asserted as per write strobes 
//	          	  	  	  	// Slave register 8
//	          	  	  	  	slv_reg8[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	  	  	end  
//	          	5'h09:
//	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
//	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
//	          	  	  	  	// Respective byte enables are asserted as per write strobes 
//	          	  	  	  	// Slave register 9
//	          	  	  	  	slv_reg9[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
//	          	  	  	end  
	          	5'h0A:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 10
	          	  	    	slv_reg10[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  	  	end  
	          	5'h0B:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 11
	          	  	    	slv_reg11[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  	  	end  
	          	5'h0C:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 12
	          	  	    	slv_reg12[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  		end  
	          	5'h0D:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 13
	          	  	    	slv_reg13[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  	  	end  
	          	5'h0E:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 14
	          	  	    	slv_reg14[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  	  	end  
	          	5'h0F:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	  	  	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	  	    	// Respective byte enables are asserted as per write strobes 
	          	  	    	// Slave register 15
	          	  	    	slv_reg15[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	  	  	end  
	          	5'h10:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	    	  	// Respective byte enables are asserted as per write strobes 
	          	    	  	// Slave register 16
	          	    	  	slv_reg16[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	    	end  
	          	5'h11:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	    	  	// Respective byte enables are asserted as per write strobes 
	          	    	  	// Slave register 17
	          	    	  	slv_reg17[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	    	end  
	          	5'h12:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	    	  	// Respective byte enables are asserted as per write strobes 
	          	    	  	// Slave register 18
	          	    	  	slv_reg18[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	    	end  
	          	5'h13:
	          	  	for ( byte_index = 0; byte_index <= (C_S_AXI_LITE_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
	          	    	if ( S_AXI_LITE_WSTRB[byte_index] == 1 ) begin
	          	      		// Respective byte enables are asserted as per write strobes 
	          	      		// Slave register 19
	          	      		slv_reg19[(byte_index*8) +: 8] <= S_AXI_LITE_WDATA[(byte_index*8) +: 8];
	          	    	end  
	          	default: begin
//	          	    slv_reg0 <= slv_reg0;
//	          	    slv_reg1 <= slv_reg1;
//	          	    slv_reg2 <= slv_reg2;
//	          	    slv_reg3 <= slv_reg3;
//	          	    slv_reg4 <= slv_reg4;
//	          	    slv_reg5 <= slv_reg5;
//	          	    slv_reg6 <= slv_reg6;
//	          	    slv_reg7 <= slv_reg7;
//	          	    slv_reg8 <= slv_reg8;
//	          	    slv_reg9 <= slv_reg9;
	          	    slv_reg10 <= slv_reg10;
	          	    slv_reg11 <= slv_reg11;
	          	    slv_reg12 <= slv_reg12;
	          	    slv_reg13 <= slv_reg13;
	          	    slv_reg14 <= slv_reg14;
	          	    slv_reg15 <= slv_reg15;
	          	    slv_reg16 <= slv_reg16;
	          	    slv_reg17 <= slv_reg17;
	          	    slv_reg18 <= slv_reg18;
	          	    slv_reg19 <= slv_reg19;
	          	end
	        endcase
	    end
	end   

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axil_wready, S_AXI_LITE_WVALID, axil_wready and S_AXI_LITE_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.

	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_bvalid  <= 0;
	      	axil_bresp   <= 2'b0;
	    end 
	  	else begin    
	    	if (axil_awready && S_AXI_LITE_AWVALID && ~axil_bvalid && axil_wready && S_AXI_LITE_WVALID) begin
	      		// indicates a valid write response is available
	      		axil_bvalid <= 1'b1;
	      		axil_bresp  <= 2'b0; // 'OKAY' response 
	    	end                   // work error responses in future
	    	else if (S_AXI_LITE_BREADY && axil_bvalid) begin
	        	//check if bready is asserted while bvalid is high) 
	        	//(there is a possibility that bready is always asserted high)   
	          	axil_bvalid <= 1'b0; 
	        end  
	    end
	end   

	// Implement axil_arready generation
	// axil_arready is asserted for one S_AXI_LITE_ACLK clock cycle when
	// S_AXI_LITE_ARVALID is asserted. axil_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_LITE_ARVALID is 
	// asserted. axil_araddr is reset to zero on reset assertion.

	always @( posedge S_AXI_LITE_ACLK ) begin
		if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_arready <= 1'b0;
	      	axil_araddr  <= 32'b0;
	    end 
	  	else begin    
	      	if (~axil_arready && S_AXI_LITE_ARVALID) begin
	          	// indicates that the slave has acceped the valid read address
	          	axil_arready <= 1'b1;
	          	// Read address latching
	          	axil_araddr  <= S_AXI_LITE_ARADDR;
	        end
	      	else begin
	          	axil_arready <= 1'b0;
	        end
	    end 
	end       

	// Implement axil_arvalid generation
	// axil_rvalid is asserted for one S_AXI_LITE_ACLK clock cycle when both 
	// S_AXI_LITE_ARVALID and axil_arready are asserted. The slave registers 
	// data are available on the axil_rdata bus at this instance. The 
	// assertion of axil_rvalid marks the validity of read data on the 
	// bus and axil_rresp indicates the status of read transaction.axil_rvalid 
	// is deasserted on reset (active low). axil_rresp and axil_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_LITE_ACLK )
	begin
	  if ( S_AXI_LITE_ARESETN == 1'b0 )
	    begin
	      axil_rvalid <= 0;
	      axil_rresp  <= 0;
	    end 
	  else
	    begin    
	      if (axil_arready && S_AXI_LITE_ARVALID && ~axil_rvalid)
	        begin
	          // Valid read data is available at the read data bus
	          axil_rvalid <= 1'b1;
	          axil_rresp  <= 2'b0; // 'OKAY' response
	        end   
	      else if (axil_rvalid && S_AXI_LITE_RREADY)
	        begin
	          // Read data is accepted by the master
	          axil_rvalid <= 1'b0;
	        end                
	    end
	end    

	// Implement memory mapped register select and read logic generation
	// Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axil_arready & S_AXI_LITE_ARVALID & ~axil_rvalid;
	always @(*) begin
	    // Address decoding for reading registers
	    case ( axil_araddr[ADDR_LSB+OPT_MEM_ADDR_BITS:ADDR_LSB] )
	        5'h00   : reg_data_out <= slv_reg0;
	        5'h01   : reg_data_out <= slv_reg1;
	        5'h02   : reg_data_out <= slv_reg2;
	        5'h03   : reg_data_out <= slv_reg3;
	        5'h04   : reg_data_out <= slv_reg4;
	        5'h05   : reg_data_out <= slv_reg5;
	        5'h06   : reg_data_out <= slv_reg6;
	        5'h07   : reg_data_out <= slv_reg7;
	        5'h08   : reg_data_out <= slv_reg8;
	        5'h09   : reg_data_out <= slv_reg9;
	        5'h0A   : reg_data_out <= slv_reg10;
	        5'h0B   : reg_data_out <= slv_reg11;
	        5'h0C   : reg_data_out <= slv_reg12;
	        5'h0D   : reg_data_out <= slv_reg13;
	        5'h0E   : reg_data_out <= slv_reg14;
	        5'h0F   : reg_data_out <= slv_reg15;
	        5'h10   : reg_data_out <= slv_reg16;
	        5'h11   : reg_data_out <= slv_reg17;
	        5'h12   : reg_data_out <= slv_reg18;
	        5'h13   : reg_data_out <= slv_reg19;
	        default : reg_data_out <= 0;
	    endcase
	end

	// Output register or memory read data
	always @( posedge S_AXI_LITE_ACLK ) begin
	  	if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	      	axil_rdata  <= 0;
	    end 
	  	else begin    
	    	// When there is a valid read address (S_AXI_LITE_ARVALID) with 
	    	// acceptance of read address by the slave (axil_arready), 
	    	// output the read dada 
	      	if (slv_reg_rden) begin
	          	axil_rdata <= reg_data_out;     // register read data
	    	end   
	    end
	end    

	//----------------------------------------------
	// Add user logic here
	assign reg_bus_o = {
		slv_reg19,			//319:288
		slv_reg18,			//287:256
		slv_reg17,			//255:224
		slv_reg16,			//223:192
		slv_reg15,			//191:160
		slv_reg14,			//159:128
		slv_reg13,			//127:96
		slv_reg12,			// 95:64
		slv_reg11,			// 63:32
		slv_reg10	 		// 31:0
		};

	always @( posedge S_AXI_LITE_ACLK ) begin
	    if ( S_AXI_LITE_ARESETN == 1'b0 ) begin
	       	slv_reg9 <= 32'b0;
	       	slv_reg8 <= 32'd0;
	       	slv_reg7 <= 32'b0;
	       	slv_reg6 <= 32'b0;
	       	slv_reg5 <= 32'b0;
	       	slv_reg4 <= 32'b0;
	       	slv_reg3 <= 32'b0;
	       	slv_reg2 <= 32'b0;
	       	slv_reg1 <= 32'b0;
	       	slv_reg0 <= 32'b0;
	    end 
	   	else begin
	        slv_reg9 <= reg_bus_i[319:288];			//319:288		
	        slv_reg8 <= reg_bus_i[287:256];			//287:256
	        slv_reg7 <= reg_bus_i[255:224];			//255:224
	        slv_reg6 <= reg_bus_i[223:192];			//223:192
	        slv_reg5 <= reg_bus_i[191:160];			//191:160
	        slv_reg4 <= reg_bus_i[159:128];			//159:128
	        slv_reg3 <= reg_bus_i[127:96 ];			//127:96
	        slv_reg2 <= reg_bus_i[ 95:64 ];			// 95:64
	        slv_reg1 <= reg_bus_i[ 63:32 ];			// 63:32
	        slv_reg0 <= reg_bus_i[ 31:0  ];	 		// 31:0
	    end
	end
	// Add user logic end
	//----------------------------------------------
endmodule
