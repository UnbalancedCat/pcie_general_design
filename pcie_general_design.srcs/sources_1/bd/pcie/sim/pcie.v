//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sun Apr 27 20:38:49 2025
//Host        : BHKLaptop running 64-bit major release  (build 9200)
//Command     : generate_target pcie.bd
//Design      : pcie
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "pcie,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=pcie,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_bram_cntlr_cnt=2,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "pcie.hwdef" *) 
module pcie
   (bram_addr,
    bram_clk,
    bram_din,
    bram_dout,
    bram_en,
    bram_rst,
    bram_we,
    ddr_addr,
    ddr_ba,
    ddr_cas_n,
    ddr_ck_n,
    ddr_ck_p,
    ddr_cke,
    ddr_cs_n,
    ddr_dm,
    ddr_dq,
    ddr_dqs_n,
    ddr_dqs_p,
    ddr_odt,
    ddr_ras_n,
    ddr_reset_n,
    ddr_s_axi_araddr,
    ddr_s_axi_arburst,
    ddr_s_axi_arcache,
    ddr_s_axi_arid,
    ddr_s_axi_arlen,
    ddr_s_axi_arlock,
    ddr_s_axi_arprot,
    ddr_s_axi_arqos,
    ddr_s_axi_arready,
    ddr_s_axi_arsize,
    ddr_s_axi_arvalid,
    ddr_s_axi_awaddr,
    ddr_s_axi_awburst,
    ddr_s_axi_awcache,
    ddr_s_axi_awid,
    ddr_s_axi_awlen,
    ddr_s_axi_awlock,
    ddr_s_axi_awprot,
    ddr_s_axi_awqos,
    ddr_s_axi_awready,
    ddr_s_axi_awsize,
    ddr_s_axi_awvalid,
    ddr_s_axi_bid,
    ddr_s_axi_bready,
    ddr_s_axi_bresp,
    ddr_s_axi_bvalid,
    ddr_s_axi_rdata,
    ddr_s_axi_rid,
    ddr_s_axi_rlast,
    ddr_s_axi_rready,
    ddr_s_axi_rresp,
    ddr_s_axi_rvalid,
    ddr_s_axi_wdata,
    ddr_s_axi_wlast,
    ddr_s_axi_wready,
    ddr_s_axi_wstrb,
    ddr_s_axi_wvalid,
    ddr_we_n,
    init_calib_complete_o,
    pcie_clk_i,
    pcie_clk_o,
    pcie_rst_n_i,
    pcie_rst_n_o,
    pcie_rxn,
    pcie_rxp,
    pcie_txn,
    pcie_txp,
    pcie_user_lnk_up_o,
    pcie_usr_irq_req_i,
    reg_bus_i,
    reg_bus_o,
    sys_clk_i,
    sys_rst_n_i);
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME bram, MASTER_TYPE BRAM_CTRL, MEM_ECC NONE, MEM_SIZE 8192, MEM_WIDTH 32, READ_LATENCY 1" *) input [31:0]bram_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) input bram_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) input [31:0]bram_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) output [31:0]bram_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) input bram_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) input bram_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 bram " *) input [3:0]bram_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) output [15:0]ddr_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [2:0]ddr_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output ddr_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [1:0]ddr_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [1:0]ddr_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [1:0]ddr_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [1:0]ddr_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [7:0]ddr_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) inout [63:0]ddr_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) inout [7:0]ddr_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) inout [7:0]ddr_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output [1:0]ddr_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output ddr_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output ddr_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ddr_s_axi, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN pcie_sys_clk_i, DATA_WIDTH 128, FREQ_HZ 200000000, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 4, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 1, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 1, NUM_WRITE_THREADS 1, PHASE 0.000, PROTOCOL AXI4, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 1, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]ddr_s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [1:0]ddr_s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [7:0]ddr_s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [0:0]ddr_s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [2:0]ddr_s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [2:0]ddr_s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [63:0]ddr_s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [1:0]ddr_s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [7:0]ddr_s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [0:0]ddr_s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [2:0]ddr_s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [3:0]ddr_s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [2:0]ddr_s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output [3:0]ddr_s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output [1:0]ddr_s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output [127:0]ddr_s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output [3:0]ddr_s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output [1:0]ddr_s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [127:0]ddr_s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) output ddr_s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input [15:0]ddr_s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 ddr_s_axi " *) input ddr_s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 ddr " *) output ddr_we_n;
  output init_calib_complete_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE_CLK_I, ASSOCIATED_RESET pcie_sys_clk_i, CLK_DOMAIN pcie_clk_i, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input pcie_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.PCIE_CLK_O CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.PCIE_CLK_O, CLK_DOMAIN pcie_xdma_0_0_axi_aclk, FREQ_HZ 250000000, INSERT_VIP 0, PHASE 0.000" *) output pcie_clk_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RST_N_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RST_N_I, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input pcie_rst_n_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.PCIE_RST_N_O RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.PCIE_RST_N_O, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) output pcie_rst_n_o;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie " *) input [7:0]pcie_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie " *) input [7:0]pcie_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie " *) output [7:0]pcie_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:pcie_7x_mgt:1.0 pcie " *) output [7:0]pcie_txp;
  output pcie_user_lnk_up_o;
  input [1:0]pcie_usr_irq_req_i;
  input [319:0]reg_bus_i;
  output [319:0]reg_bus_o;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYS_CLK_I CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYS_CLK_I, ASSOCIATED_BUSIF ddr_s_axi, ASSOCIATED_RESET sys_rst_n_i, CLK_DOMAIN pcie_sys_clk_i, FREQ_HZ 200000000, INSERT_VIP 0, PHASE 0.000" *) input sys_clk_i;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.SYS_RST_N_I RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.SYS_RST_N_I, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input sys_rst_n_i;

  wire [31:0]BRAM_PORTA_0_1_ADDR;
  wire BRAM_PORTA_0_1_CLK;
  wire [31:0]BRAM_PORTA_0_1_DIN;
  wire [31:0]BRAM_PORTA_0_1_DOUT;
  wire BRAM_PORTA_0_1_EN;
  wire BRAM_PORTA_0_1_RST;
  wire [3:0]BRAM_PORTA_0_1_WE;
  wire [63:0]S00_AXI_0_1_ARADDR;
  wire [1:0]S00_AXI_0_1_ARBURST;
  wire [3:0]S00_AXI_0_1_ARCACHE;
  wire [3:0]S00_AXI_0_1_ARID;
  wire [7:0]S00_AXI_0_1_ARLEN;
  wire [0:0]S00_AXI_0_1_ARLOCK;
  wire [2:0]S00_AXI_0_1_ARPROT;
  wire [3:0]S00_AXI_0_1_ARQOS;
  wire S00_AXI_0_1_ARREADY;
  wire [2:0]S00_AXI_0_1_ARSIZE;
  wire S00_AXI_0_1_ARVALID;
  wire [63:0]S00_AXI_0_1_AWADDR;
  wire [1:0]S00_AXI_0_1_AWBURST;
  wire [3:0]S00_AXI_0_1_AWCACHE;
  wire [3:0]S00_AXI_0_1_AWID;
  wire [7:0]S00_AXI_0_1_AWLEN;
  wire [0:0]S00_AXI_0_1_AWLOCK;
  wire [2:0]S00_AXI_0_1_AWPROT;
  wire [3:0]S00_AXI_0_1_AWQOS;
  wire S00_AXI_0_1_AWREADY;
  wire [2:0]S00_AXI_0_1_AWSIZE;
  wire S00_AXI_0_1_AWVALID;
  wire [3:0]S00_AXI_0_1_BID;
  wire S00_AXI_0_1_BREADY;
  wire [1:0]S00_AXI_0_1_BRESP;
  wire S00_AXI_0_1_BVALID;
  wire [127:0]S00_AXI_0_1_RDATA;
  wire [3:0]S00_AXI_0_1_RID;
  wire S00_AXI_0_1_RLAST;
  wire S00_AXI_0_1_RREADY;
  wire [1:0]S00_AXI_0_1_RRESP;
  wire S00_AXI_0_1_RVALID;
  wire [127:0]S00_AXI_0_1_WDATA;
  wire S00_AXI_0_1_WLAST;
  wire S00_AXI_0_1_WREADY;
  wire [15:0]S00_AXI_0_1_WSTRB;
  wire S00_AXI_0_1_WVALID;
  wire [12:0]axi_bram_ctrl_0_BRAM_PORTA_ADDR;
  wire axi_bram_ctrl_0_BRAM_PORTA_CLK;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DIN;
  wire [31:0]axi_bram_ctrl_0_BRAM_PORTA_DOUT;
  wire axi_bram_ctrl_0_BRAM_PORTA_EN;
  wire axi_bram_ctrl_0_BRAM_PORTA_RST;
  wire [3:0]axi_bram_ctrl_0_BRAM_PORTA_WE;
  wire [15:0]mig_7series_0_DDR3_ADDR;
  wire [2:0]mig_7series_0_DDR3_BA;
  wire mig_7series_0_DDR3_CAS_N;
  wire [1:0]mig_7series_0_DDR3_CKE;
  wire [1:0]mig_7series_0_DDR3_CK_N;
  wire [1:0]mig_7series_0_DDR3_CK_P;
  wire [1:0]mig_7series_0_DDR3_CS_N;
  wire [7:0]mig_7series_0_DDR3_DM;
  wire [63:0]mig_7series_0_DDR3_DQ;
  wire [7:0]mig_7series_0_DDR3_DQS_N;
  wire [7:0]mig_7series_0_DDR3_DQS_P;
  wire [1:0]mig_7series_0_DDR3_ODT;
  wire mig_7series_0_DDR3_RAS_N;
  wire mig_7series_0_DDR3_RESET_N;
  wire mig_7series_0_DDR3_WE_N;
  wire mig_7series_0_init_calib_complete;
  wire mig_7series_0_ui_clk;
  wire mig_7series_0_ui_clk_sync_rst;
  wire [319:0]reg_bus_i_0_1;
  wire [319:0]reg_wr_axil_0_reg_bus_o;
  wire [32:0]smartconnect_0_M00_AXI_ARADDR;
  wire [1:0]smartconnect_0_M00_AXI_ARBURST;
  wire [3:0]smartconnect_0_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_0_M00_AXI_ARLEN;
  wire [0:0]smartconnect_0_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_0_M00_AXI_ARPROT;
  wire [3:0]smartconnect_0_M00_AXI_ARQOS;
  wire smartconnect_0_M00_AXI_ARREADY;
  wire [2:0]smartconnect_0_M00_AXI_ARSIZE;
  wire smartconnect_0_M00_AXI_ARVALID;
  wire [32:0]smartconnect_0_M00_AXI_AWADDR;
  wire [1:0]smartconnect_0_M00_AXI_AWBURST;
  wire [3:0]smartconnect_0_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_0_M00_AXI_AWLEN;
  wire [0:0]smartconnect_0_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_0_M00_AXI_AWPROT;
  wire [3:0]smartconnect_0_M00_AXI_AWQOS;
  wire smartconnect_0_M00_AXI_AWREADY;
  wire [2:0]smartconnect_0_M00_AXI_AWSIZE;
  wire smartconnect_0_M00_AXI_AWVALID;
  wire smartconnect_0_M00_AXI_BREADY;
  wire [1:0]smartconnect_0_M00_AXI_BRESP;
  wire smartconnect_0_M00_AXI_BVALID;
  wire [127:0]smartconnect_0_M00_AXI_RDATA;
  wire smartconnect_0_M00_AXI_RLAST;
  wire smartconnect_0_M00_AXI_RREADY;
  wire [1:0]smartconnect_0_M00_AXI_RRESP;
  wire smartconnect_0_M00_AXI_RVALID;
  wire [127:0]smartconnect_0_M00_AXI_WDATA;
  wire smartconnect_0_M00_AXI_WLAST;
  wire smartconnect_0_M00_AXI_WREADY;
  wire [15:0]smartconnect_0_M00_AXI_WSTRB;
  wire smartconnect_0_M00_AXI_WVALID;
  wire [12:0]smartconnect_1_M00_AXI_ARADDR;
  wire [1:0]smartconnect_1_M00_AXI_ARBURST;
  wire [3:0]smartconnect_1_M00_AXI_ARCACHE;
  wire [7:0]smartconnect_1_M00_AXI_ARLEN;
  wire [0:0]smartconnect_1_M00_AXI_ARLOCK;
  wire [2:0]smartconnect_1_M00_AXI_ARPROT;
  wire smartconnect_1_M00_AXI_ARREADY;
  wire [2:0]smartconnect_1_M00_AXI_ARSIZE;
  wire smartconnect_1_M00_AXI_ARVALID;
  wire [12:0]smartconnect_1_M00_AXI_AWADDR;
  wire [1:0]smartconnect_1_M00_AXI_AWBURST;
  wire [3:0]smartconnect_1_M00_AXI_AWCACHE;
  wire [7:0]smartconnect_1_M00_AXI_AWLEN;
  wire [0:0]smartconnect_1_M00_AXI_AWLOCK;
  wire [2:0]smartconnect_1_M00_AXI_AWPROT;
  wire smartconnect_1_M00_AXI_AWREADY;
  wire [2:0]smartconnect_1_M00_AXI_AWSIZE;
  wire smartconnect_1_M00_AXI_AWVALID;
  wire smartconnect_1_M00_AXI_BREADY;
  wire [1:0]smartconnect_1_M00_AXI_BRESP;
  wire smartconnect_1_M00_AXI_BVALID;
  wire [31:0]smartconnect_1_M00_AXI_RDATA;
  wire smartconnect_1_M00_AXI_RLAST;
  wire smartconnect_1_M00_AXI_RREADY;
  wire [1:0]smartconnect_1_M00_AXI_RRESP;
  wire smartconnect_1_M00_AXI_RVALID;
  wire [31:0]smartconnect_1_M00_AXI_WDATA;
  wire smartconnect_1_M00_AXI_WLAST;
  wire smartconnect_1_M00_AXI_WREADY;
  wire [3:0]smartconnect_1_M00_AXI_WSTRB;
  wire smartconnect_1_M00_AXI_WVALID;
  wire sys_clk_0_1;
  wire sys_clk_i_1;
  wire sys_rst_n_0_1;
  wire sys_rst_n_i_1;
  wire [1:0]usr_irq_req_0_1;
  wire [0:0]util_vector_logic_0_Res;
  wire [63:0]xdma_0_M_AXI_ARADDR;
  wire [1:0]xdma_0_M_AXI_ARBURST;
  wire [3:0]xdma_0_M_AXI_ARCACHE;
  wire [3:0]xdma_0_M_AXI_ARID;
  wire [7:0]xdma_0_M_AXI_ARLEN;
  wire xdma_0_M_AXI_ARLOCK;
  wire [2:0]xdma_0_M_AXI_ARPROT;
  wire xdma_0_M_AXI_ARREADY;
  wire [2:0]xdma_0_M_AXI_ARSIZE;
  wire xdma_0_M_AXI_ARVALID;
  wire [63:0]xdma_0_M_AXI_AWADDR;
  wire [1:0]xdma_0_M_AXI_AWBURST;
  wire [3:0]xdma_0_M_AXI_AWCACHE;
  wire [3:0]xdma_0_M_AXI_AWID;
  wire [7:0]xdma_0_M_AXI_AWLEN;
  wire xdma_0_M_AXI_AWLOCK;
  wire [2:0]xdma_0_M_AXI_AWPROT;
  wire xdma_0_M_AXI_AWREADY;
  wire [2:0]xdma_0_M_AXI_AWSIZE;
  wire xdma_0_M_AXI_AWVALID;
  wire [3:0]xdma_0_M_AXI_BID;
  wire xdma_0_M_AXI_BREADY;
  wire [1:0]xdma_0_M_AXI_BRESP;
  wire xdma_0_M_AXI_BVALID;
  wire [63:0]xdma_0_M_AXI_BYPASS_ARADDR;
  wire [1:0]xdma_0_M_AXI_BYPASS_ARBURST;
  wire [3:0]xdma_0_M_AXI_BYPASS_ARCACHE;
  wire [3:0]xdma_0_M_AXI_BYPASS_ARID;
  wire [7:0]xdma_0_M_AXI_BYPASS_ARLEN;
  wire xdma_0_M_AXI_BYPASS_ARLOCK;
  wire [2:0]xdma_0_M_AXI_BYPASS_ARPROT;
  wire xdma_0_M_AXI_BYPASS_ARREADY;
  wire [2:0]xdma_0_M_AXI_BYPASS_ARSIZE;
  wire xdma_0_M_AXI_BYPASS_ARVALID;
  wire [63:0]xdma_0_M_AXI_BYPASS_AWADDR;
  wire [1:0]xdma_0_M_AXI_BYPASS_AWBURST;
  wire [3:0]xdma_0_M_AXI_BYPASS_AWCACHE;
  wire [3:0]xdma_0_M_AXI_BYPASS_AWID;
  wire [7:0]xdma_0_M_AXI_BYPASS_AWLEN;
  wire xdma_0_M_AXI_BYPASS_AWLOCK;
  wire [2:0]xdma_0_M_AXI_BYPASS_AWPROT;
  wire xdma_0_M_AXI_BYPASS_AWREADY;
  wire [2:0]xdma_0_M_AXI_BYPASS_AWSIZE;
  wire xdma_0_M_AXI_BYPASS_AWVALID;
  wire [3:0]xdma_0_M_AXI_BYPASS_BID;
  wire xdma_0_M_AXI_BYPASS_BREADY;
  wire [1:0]xdma_0_M_AXI_BYPASS_BRESP;
  wire xdma_0_M_AXI_BYPASS_BVALID;
  wire [127:0]xdma_0_M_AXI_BYPASS_RDATA;
  wire [3:0]xdma_0_M_AXI_BYPASS_RID;
  wire xdma_0_M_AXI_BYPASS_RLAST;
  wire xdma_0_M_AXI_BYPASS_RREADY;
  wire [1:0]xdma_0_M_AXI_BYPASS_RRESP;
  wire xdma_0_M_AXI_BYPASS_RVALID;
  wire [127:0]xdma_0_M_AXI_BYPASS_WDATA;
  wire xdma_0_M_AXI_BYPASS_WLAST;
  wire xdma_0_M_AXI_BYPASS_WREADY;
  wire [15:0]xdma_0_M_AXI_BYPASS_WSTRB;
  wire xdma_0_M_AXI_BYPASS_WVALID;
  wire [31:0]xdma_0_M_AXI_LITE_ARADDR;
  wire [2:0]xdma_0_M_AXI_LITE_ARPROT;
  wire xdma_0_M_AXI_LITE_ARREADY;
  wire xdma_0_M_AXI_LITE_ARVALID;
  wire [31:0]xdma_0_M_AXI_LITE_AWADDR;
  wire [2:0]xdma_0_M_AXI_LITE_AWPROT;
  wire xdma_0_M_AXI_LITE_AWREADY;
  wire xdma_0_M_AXI_LITE_AWVALID;
  wire xdma_0_M_AXI_LITE_BREADY;
  wire [1:0]xdma_0_M_AXI_LITE_BRESP;
  wire xdma_0_M_AXI_LITE_BVALID;
  wire [31:0]xdma_0_M_AXI_LITE_RDATA;
  wire xdma_0_M_AXI_LITE_RREADY;
  wire [1:0]xdma_0_M_AXI_LITE_RRESP;
  wire xdma_0_M_AXI_LITE_RVALID;
  wire [31:0]xdma_0_M_AXI_LITE_WDATA;
  wire xdma_0_M_AXI_LITE_WREADY;
  wire [3:0]xdma_0_M_AXI_LITE_WSTRB;
  wire xdma_0_M_AXI_LITE_WVALID;
  wire [127:0]xdma_0_M_AXI_RDATA;
  wire [3:0]xdma_0_M_AXI_RID;
  wire xdma_0_M_AXI_RLAST;
  wire xdma_0_M_AXI_RREADY;
  wire [1:0]xdma_0_M_AXI_RRESP;
  wire xdma_0_M_AXI_RVALID;
  wire [127:0]xdma_0_M_AXI_WDATA;
  wire xdma_0_M_AXI_WLAST;
  wire xdma_0_M_AXI_WREADY;
  wire [15:0]xdma_0_M_AXI_WSTRB;
  wire xdma_0_M_AXI_WVALID;
  wire xdma_0_axi_aclk;
  wire xdma_0_axi_aresetn;
  wire [7:0]xdma_0_pcie_mgt_rxn;
  wire [7:0]xdma_0_pcie_mgt_rxp;
  wire [7:0]xdma_0_pcie_mgt_txn;
  wire [7:0]xdma_0_pcie_mgt_txp;
  wire xdma_0_user_lnk_up;

  assign BRAM_PORTA_0_1_ADDR = bram_addr[31:0];
  assign BRAM_PORTA_0_1_CLK = bram_clk;
  assign BRAM_PORTA_0_1_DIN = bram_din[31:0];
  assign BRAM_PORTA_0_1_EN = bram_en;
  assign BRAM_PORTA_0_1_RST = bram_rst;
  assign BRAM_PORTA_0_1_WE = bram_we[3:0];
  assign S00_AXI_0_1_ARADDR = ddr_s_axi_araddr[63:0];
  assign S00_AXI_0_1_ARBURST = ddr_s_axi_arburst[1:0];
  assign S00_AXI_0_1_ARCACHE = ddr_s_axi_arcache[3:0];
  assign S00_AXI_0_1_ARID = ddr_s_axi_arid[3:0];
  assign S00_AXI_0_1_ARLEN = ddr_s_axi_arlen[7:0];
  assign S00_AXI_0_1_ARLOCK = ddr_s_axi_arlock[0];
  assign S00_AXI_0_1_ARPROT = ddr_s_axi_arprot[2:0];
  assign S00_AXI_0_1_ARQOS = ddr_s_axi_arqos[3:0];
  assign S00_AXI_0_1_ARSIZE = ddr_s_axi_arsize[2:0];
  assign S00_AXI_0_1_ARVALID = ddr_s_axi_arvalid;
  assign S00_AXI_0_1_AWADDR = ddr_s_axi_awaddr[63:0];
  assign S00_AXI_0_1_AWBURST = ddr_s_axi_awburst[1:0];
  assign S00_AXI_0_1_AWCACHE = ddr_s_axi_awcache[3:0];
  assign S00_AXI_0_1_AWID = ddr_s_axi_awid[3:0];
  assign S00_AXI_0_1_AWLEN = ddr_s_axi_awlen[7:0];
  assign S00_AXI_0_1_AWLOCK = ddr_s_axi_awlock[0];
  assign S00_AXI_0_1_AWPROT = ddr_s_axi_awprot[2:0];
  assign S00_AXI_0_1_AWQOS = ddr_s_axi_awqos[3:0];
  assign S00_AXI_0_1_AWSIZE = ddr_s_axi_awsize[2:0];
  assign S00_AXI_0_1_AWVALID = ddr_s_axi_awvalid;
  assign S00_AXI_0_1_BREADY = ddr_s_axi_bready;
  assign S00_AXI_0_1_RREADY = ddr_s_axi_rready;
  assign S00_AXI_0_1_WDATA = ddr_s_axi_wdata[127:0];
  assign S00_AXI_0_1_WLAST = ddr_s_axi_wlast;
  assign S00_AXI_0_1_WSTRB = ddr_s_axi_wstrb[15:0];
  assign S00_AXI_0_1_WVALID = ddr_s_axi_wvalid;
  assign bram_dout[31:0] = BRAM_PORTA_0_1_DOUT;
  assign ddr_addr[15:0] = mig_7series_0_DDR3_ADDR;
  assign ddr_ba[2:0] = mig_7series_0_DDR3_BA;
  assign ddr_cas_n = mig_7series_0_DDR3_CAS_N;
  assign ddr_ck_n[1:0] = mig_7series_0_DDR3_CK_N;
  assign ddr_ck_p[1:0] = mig_7series_0_DDR3_CK_P;
  assign ddr_cke[1:0] = mig_7series_0_DDR3_CKE;
  assign ddr_cs_n[1:0] = mig_7series_0_DDR3_CS_N;
  assign ddr_dm[7:0] = mig_7series_0_DDR3_DM;
  assign ddr_odt[1:0] = mig_7series_0_DDR3_ODT;
  assign ddr_ras_n = mig_7series_0_DDR3_RAS_N;
  assign ddr_reset_n = mig_7series_0_DDR3_RESET_N;
  assign ddr_s_axi_arready = S00_AXI_0_1_ARREADY;
  assign ddr_s_axi_awready = S00_AXI_0_1_AWREADY;
  assign ddr_s_axi_bid[3:0] = S00_AXI_0_1_BID;
  assign ddr_s_axi_bresp[1:0] = S00_AXI_0_1_BRESP;
  assign ddr_s_axi_bvalid = S00_AXI_0_1_BVALID;
  assign ddr_s_axi_rdata[127:0] = S00_AXI_0_1_RDATA;
  assign ddr_s_axi_rid[3:0] = S00_AXI_0_1_RID;
  assign ddr_s_axi_rlast = S00_AXI_0_1_RLAST;
  assign ddr_s_axi_rresp[1:0] = S00_AXI_0_1_RRESP;
  assign ddr_s_axi_rvalid = S00_AXI_0_1_RVALID;
  assign ddr_s_axi_wready = S00_AXI_0_1_WREADY;
  assign ddr_we_n = mig_7series_0_DDR3_WE_N;
  assign init_calib_complete_o = mig_7series_0_init_calib_complete;
  assign pcie_clk_o = xdma_0_axi_aclk;
  assign pcie_rst_n_o = xdma_0_axi_aresetn;
  assign pcie_txn[7:0] = xdma_0_pcie_mgt_txn;
  assign pcie_txp[7:0] = xdma_0_pcie_mgt_txp;
  assign pcie_user_lnk_up_o = xdma_0_user_lnk_up;
  assign reg_bus_i_0_1 = reg_bus_i[319:0];
  assign reg_bus_o[319:0] = reg_wr_axil_0_reg_bus_o;
  assign sys_clk_0_1 = pcie_clk_i;
  assign sys_clk_i_1 = sys_clk_i;
  assign sys_rst_n_0_1 = pcie_rst_n_i;
  assign sys_rst_n_i_1 = sys_rst_n_i;
  assign usr_irq_req_0_1 = pcie_usr_irq_req_i[1:0];
  assign xdma_0_pcie_mgt_rxn = pcie_rxn[7:0];
  assign xdma_0_pcie_mgt_rxp = pcie_rxp[7:0];
  pcie_axi_bram_ctrl_0_0 axi_bram_ctrl_0
       (.bram_addr_a(axi_bram_ctrl_0_BRAM_PORTA_ADDR),
        .bram_clk_a(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .bram_en_a(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .bram_rddata_a(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .bram_rst_a(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .bram_we_a(axi_bram_ctrl_0_BRAM_PORTA_WE),
        .bram_wrdata_a(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .s_axi_aclk(xdma_0_axi_aclk),
        .s_axi_araddr(smartconnect_1_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_1_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .s_axi_aresetn(xdma_0_axi_aresetn),
        .s_axi_arlen(smartconnect_1_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_1_M00_AXI_ARPROT),
        .s_axi_arready(smartconnect_1_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_1_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .s_axi_awlen(smartconnect_1_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_1_M00_AXI_AWPROT),
        .s_axi_awready(smartconnect_1_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_1_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_1_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_1_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_1_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_1_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_1_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_1_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_1_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_1_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_1_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_1_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_1_M00_AXI_WVALID));
  pcie_axi_bram_ctrl_0_bram_0 axi_bram_ctrl_0_bram
       (.addra(BRAM_PORTA_0_1_ADDR),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,axi_bram_ctrl_0_BRAM_PORTA_ADDR}),
        .clka(BRAM_PORTA_0_1_CLK),
        .clkb(axi_bram_ctrl_0_BRAM_PORTA_CLK),
        .dina(BRAM_PORTA_0_1_DIN),
        .dinb(axi_bram_ctrl_0_BRAM_PORTA_DIN),
        .douta(BRAM_PORTA_0_1_DOUT),
        .doutb(axi_bram_ctrl_0_BRAM_PORTA_DOUT),
        .ena(BRAM_PORTA_0_1_EN),
        .enb(axi_bram_ctrl_0_BRAM_PORTA_EN),
        .rsta(BRAM_PORTA_0_1_RST),
        .rstb(axi_bram_ctrl_0_BRAM_PORTA_RST),
        .wea(BRAM_PORTA_0_1_WE),
        .web(axi_bram_ctrl_0_BRAM_PORTA_WE));
  pcie_mig_7series_0_0 mig_7series_0
       (.aresetn(util_vector_logic_0_Res),
        .ddr3_addr(mig_7series_0_DDR3_ADDR),
        .ddr3_ba(mig_7series_0_DDR3_BA),
        .ddr3_cas_n(mig_7series_0_DDR3_CAS_N),
        .ddr3_ck_n(mig_7series_0_DDR3_CK_N),
        .ddr3_ck_p(mig_7series_0_DDR3_CK_P),
        .ddr3_cke(mig_7series_0_DDR3_CKE),
        .ddr3_cs_n(mig_7series_0_DDR3_CS_N),
        .ddr3_dm(mig_7series_0_DDR3_DM),
        .ddr3_dq(ddr_dq[63:0]),
        .ddr3_dqs_n(ddr_dqs_n[7:0]),
        .ddr3_dqs_p(ddr_dqs_p[7:0]),
        .ddr3_odt(mig_7series_0_DDR3_ODT),
        .ddr3_ras_n(mig_7series_0_DDR3_RAS_N),
        .ddr3_reset_n(mig_7series_0_DDR3_RESET_N),
        .ddr3_we_n(mig_7series_0_DDR3_WE_N),
        .init_calib_complete(mig_7series_0_init_calib_complete),
        .s_axi_araddr(smartconnect_0_M00_AXI_ARADDR),
        .s_axi_arburst(smartconnect_0_M00_AXI_ARBURST),
        .s_axi_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen(smartconnect_0_M00_AXI_ARLEN),
        .s_axi_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .s_axi_arprot(smartconnect_0_M00_AXI_ARPROT),
        .s_axi_arqos(smartconnect_0_M00_AXI_ARQOS),
        .s_axi_arready(smartconnect_0_M00_AXI_ARREADY),
        .s_axi_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .s_axi_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .s_axi_awburst(smartconnect_0_M00_AXI_AWBURST),
        .s_axi_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen(smartconnect_0_M00_AXI_AWLEN),
        .s_axi_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .s_axi_awprot(smartconnect_0_M00_AXI_AWPROT),
        .s_axi_awqos(smartconnect_0_M00_AXI_AWQOS),
        .s_axi_awready(smartconnect_0_M00_AXI_AWREADY),
        .s_axi_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .s_axi_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(smartconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(smartconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(smartconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(smartconnect_0_M00_AXI_RDATA),
        .s_axi_rlast(smartconnect_0_M00_AXI_RLAST),
        .s_axi_rready(smartconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(smartconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(smartconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(smartconnect_0_M00_AXI_WDATA),
        .s_axi_wlast(smartconnect_0_M00_AXI_WLAST),
        .s_axi_wready(smartconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(smartconnect_0_M00_AXI_WVALID),
        .sys_clk_i(sys_clk_i_1),
        .sys_rst(sys_rst_n_i_1),
        .ui_clk(mig_7series_0_ui_clk),
        .ui_clk_sync_rst(mig_7series_0_ui_clk_sync_rst));
  pcie_reg_wr_axil_0_0 reg_wr_axil_0
       (.S_AXI_LITE_ACLK(xdma_0_axi_aclk),
        .S_AXI_LITE_ARADDR(xdma_0_M_AXI_LITE_ARADDR[6:0]),
        .S_AXI_LITE_ARESETN(xdma_0_axi_aresetn),
        .S_AXI_LITE_ARPROT(xdma_0_M_AXI_LITE_ARPROT),
        .S_AXI_LITE_ARREADY(xdma_0_M_AXI_LITE_ARREADY),
        .S_AXI_LITE_ARVALID(xdma_0_M_AXI_LITE_ARVALID),
        .S_AXI_LITE_AWADDR(xdma_0_M_AXI_LITE_AWADDR[6:0]),
        .S_AXI_LITE_AWPROT(xdma_0_M_AXI_LITE_AWPROT),
        .S_AXI_LITE_AWREADY(xdma_0_M_AXI_LITE_AWREADY),
        .S_AXI_LITE_AWVALID(xdma_0_M_AXI_LITE_AWVALID),
        .S_AXI_LITE_BREADY(xdma_0_M_AXI_LITE_BREADY),
        .S_AXI_LITE_BRESP(xdma_0_M_AXI_LITE_BRESP),
        .S_AXI_LITE_BVALID(xdma_0_M_AXI_LITE_BVALID),
        .S_AXI_LITE_RDATA(xdma_0_M_AXI_LITE_RDATA),
        .S_AXI_LITE_RREADY(xdma_0_M_AXI_LITE_RREADY),
        .S_AXI_LITE_RRESP(xdma_0_M_AXI_LITE_RRESP),
        .S_AXI_LITE_RVALID(xdma_0_M_AXI_LITE_RVALID),
        .S_AXI_LITE_WDATA(xdma_0_M_AXI_LITE_WDATA),
        .S_AXI_LITE_WREADY(xdma_0_M_AXI_LITE_WREADY),
        .S_AXI_LITE_WSTRB(xdma_0_M_AXI_LITE_WSTRB),
        .S_AXI_LITE_WVALID(xdma_0_M_AXI_LITE_WVALID),
        .reg_bus_i(reg_bus_i_0_1),
        .reg_bus_o(reg_wr_axil_0_reg_bus_o));
  pcie_smartconnect_0_0 smartconnect_0
       (.M00_AXI_araddr(smartconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_0_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_0_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_0_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_0_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_0_M00_AXI_ARPROT),
        .M00_AXI_arqos(smartconnect_0_M00_AXI_ARQOS),
        .M00_AXI_arready(smartconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_0_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_0_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_0_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_0_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_0_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_0_M00_AXI_AWPROT),
        .M00_AXI_awqos(smartconnect_0_M00_AXI_AWQOS),
        .M00_AXI_awready(smartconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_0_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_0_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_0_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_0_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_0_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_0_M00_AXI_WVALID),
        .S00_AXI_araddr(S00_AXI_0_1_ARADDR),
        .S00_AXI_arburst(S00_AXI_0_1_ARBURST),
        .S00_AXI_arcache(S00_AXI_0_1_ARCACHE),
        .S00_AXI_arid(S00_AXI_0_1_ARID),
        .S00_AXI_arlen(S00_AXI_0_1_ARLEN),
        .S00_AXI_arlock(S00_AXI_0_1_ARLOCK),
        .S00_AXI_arprot(S00_AXI_0_1_ARPROT),
        .S00_AXI_arqos(S00_AXI_0_1_ARQOS),
        .S00_AXI_arready(S00_AXI_0_1_ARREADY),
        .S00_AXI_arsize(S00_AXI_0_1_ARSIZE),
        .S00_AXI_arvalid(S00_AXI_0_1_ARVALID),
        .S00_AXI_awaddr(S00_AXI_0_1_AWADDR),
        .S00_AXI_awburst(S00_AXI_0_1_AWBURST),
        .S00_AXI_awcache(S00_AXI_0_1_AWCACHE),
        .S00_AXI_awid(S00_AXI_0_1_AWID),
        .S00_AXI_awlen(S00_AXI_0_1_AWLEN),
        .S00_AXI_awlock(S00_AXI_0_1_AWLOCK),
        .S00_AXI_awprot(S00_AXI_0_1_AWPROT),
        .S00_AXI_awqos(S00_AXI_0_1_AWQOS),
        .S00_AXI_awready(S00_AXI_0_1_AWREADY),
        .S00_AXI_awsize(S00_AXI_0_1_AWSIZE),
        .S00_AXI_awvalid(S00_AXI_0_1_AWVALID),
        .S00_AXI_bid(S00_AXI_0_1_BID),
        .S00_AXI_bready(S00_AXI_0_1_BREADY),
        .S00_AXI_bresp(S00_AXI_0_1_BRESP),
        .S00_AXI_bvalid(S00_AXI_0_1_BVALID),
        .S00_AXI_rdata(S00_AXI_0_1_RDATA),
        .S00_AXI_rid(S00_AXI_0_1_RID),
        .S00_AXI_rlast(S00_AXI_0_1_RLAST),
        .S00_AXI_rready(S00_AXI_0_1_RREADY),
        .S00_AXI_rresp(S00_AXI_0_1_RRESP),
        .S00_AXI_rvalid(S00_AXI_0_1_RVALID),
        .S00_AXI_wdata(S00_AXI_0_1_WDATA),
        .S00_AXI_wlast(S00_AXI_0_1_WLAST),
        .S00_AXI_wready(S00_AXI_0_1_WREADY),
        .S00_AXI_wstrb(S00_AXI_0_1_WSTRB),
        .S00_AXI_wvalid(S00_AXI_0_1_WVALID),
        .S01_AXI_araddr(xdma_0_M_AXI_ARADDR),
        .S01_AXI_arburst(xdma_0_M_AXI_ARBURST),
        .S01_AXI_arcache(xdma_0_M_AXI_ARCACHE),
        .S01_AXI_arid(xdma_0_M_AXI_ARID),
        .S01_AXI_arlen(xdma_0_M_AXI_ARLEN),
        .S01_AXI_arlock(xdma_0_M_AXI_ARLOCK),
        .S01_AXI_arprot(xdma_0_M_AXI_ARPROT),
        .S01_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_arready(xdma_0_M_AXI_ARREADY),
        .S01_AXI_arsize(xdma_0_M_AXI_ARSIZE),
        .S01_AXI_arvalid(xdma_0_M_AXI_ARVALID),
        .S01_AXI_awaddr(xdma_0_M_AXI_AWADDR),
        .S01_AXI_awburst(xdma_0_M_AXI_AWBURST),
        .S01_AXI_awcache(xdma_0_M_AXI_AWCACHE),
        .S01_AXI_awid(xdma_0_M_AXI_AWID),
        .S01_AXI_awlen(xdma_0_M_AXI_AWLEN),
        .S01_AXI_awlock(xdma_0_M_AXI_AWLOCK),
        .S01_AXI_awprot(xdma_0_M_AXI_AWPROT),
        .S01_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S01_AXI_awready(xdma_0_M_AXI_AWREADY),
        .S01_AXI_awsize(xdma_0_M_AXI_AWSIZE),
        .S01_AXI_awvalid(xdma_0_M_AXI_AWVALID),
        .S01_AXI_bid(xdma_0_M_AXI_BID),
        .S01_AXI_bready(xdma_0_M_AXI_BREADY),
        .S01_AXI_bresp(xdma_0_M_AXI_BRESP),
        .S01_AXI_bvalid(xdma_0_M_AXI_BVALID),
        .S01_AXI_rdata(xdma_0_M_AXI_RDATA),
        .S01_AXI_rid(xdma_0_M_AXI_RID),
        .S01_AXI_rlast(xdma_0_M_AXI_RLAST),
        .S01_AXI_rready(xdma_0_M_AXI_RREADY),
        .S01_AXI_rresp(xdma_0_M_AXI_RRESP),
        .S01_AXI_rvalid(xdma_0_M_AXI_RVALID),
        .S01_AXI_wdata(xdma_0_M_AXI_WDATA),
        .S01_AXI_wlast(xdma_0_M_AXI_WLAST),
        .S01_AXI_wready(xdma_0_M_AXI_WREADY),
        .S01_AXI_wstrb(xdma_0_M_AXI_WSTRB),
        .S01_AXI_wvalid(xdma_0_M_AXI_WVALID),
        .aclk(sys_clk_i_1),
        .aclk1(mig_7series_0_ui_clk),
        .aclk2(xdma_0_axi_aclk),
        .aresetn(sys_rst_n_i_1));
  pcie_smartconnect_0_1 smartconnect_1
       (.M00_AXI_araddr(smartconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(smartconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(smartconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(smartconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(smartconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(smartconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arready(smartconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(smartconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(smartconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(smartconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(smartconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(smartconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(smartconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(smartconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(smartconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awready(smartconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(smartconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(smartconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(smartconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(smartconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(smartconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(smartconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(smartconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(smartconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(smartconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(smartconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(smartconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(smartconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(smartconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(smartconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(smartconnect_1_M00_AXI_WVALID),
        .S00_AXI_araddr(xdma_0_M_AXI_BYPASS_ARADDR),
        .S00_AXI_arburst(xdma_0_M_AXI_BYPASS_ARBURST),
        .S00_AXI_arcache(xdma_0_M_AXI_BYPASS_ARCACHE),
        .S00_AXI_arid(xdma_0_M_AXI_BYPASS_ARID),
        .S00_AXI_arlen(xdma_0_M_AXI_BYPASS_ARLEN),
        .S00_AXI_arlock(xdma_0_M_AXI_BYPASS_ARLOCK),
        .S00_AXI_arprot(xdma_0_M_AXI_BYPASS_ARPROT),
        .S00_AXI_arqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_arready(xdma_0_M_AXI_BYPASS_ARREADY),
        .S00_AXI_arsize(xdma_0_M_AXI_BYPASS_ARSIZE),
        .S00_AXI_arvalid(xdma_0_M_AXI_BYPASS_ARVALID),
        .S00_AXI_awaddr(xdma_0_M_AXI_BYPASS_AWADDR),
        .S00_AXI_awburst(xdma_0_M_AXI_BYPASS_AWBURST),
        .S00_AXI_awcache(xdma_0_M_AXI_BYPASS_AWCACHE),
        .S00_AXI_awid(xdma_0_M_AXI_BYPASS_AWID),
        .S00_AXI_awlen(xdma_0_M_AXI_BYPASS_AWLEN),
        .S00_AXI_awlock(xdma_0_M_AXI_BYPASS_AWLOCK),
        .S00_AXI_awprot(xdma_0_M_AXI_BYPASS_AWPROT),
        .S00_AXI_awqos({1'b0,1'b0,1'b0,1'b0}),
        .S00_AXI_awready(xdma_0_M_AXI_BYPASS_AWREADY),
        .S00_AXI_awsize(xdma_0_M_AXI_BYPASS_AWSIZE),
        .S00_AXI_awvalid(xdma_0_M_AXI_BYPASS_AWVALID),
        .S00_AXI_bid(xdma_0_M_AXI_BYPASS_BID),
        .S00_AXI_bready(xdma_0_M_AXI_BYPASS_BREADY),
        .S00_AXI_bresp(xdma_0_M_AXI_BYPASS_BRESP),
        .S00_AXI_bvalid(xdma_0_M_AXI_BYPASS_BVALID),
        .S00_AXI_rdata(xdma_0_M_AXI_BYPASS_RDATA),
        .S00_AXI_rid(xdma_0_M_AXI_BYPASS_RID),
        .S00_AXI_rlast(xdma_0_M_AXI_BYPASS_RLAST),
        .S00_AXI_rready(xdma_0_M_AXI_BYPASS_RREADY),
        .S00_AXI_rresp(xdma_0_M_AXI_BYPASS_RRESP),
        .S00_AXI_rvalid(xdma_0_M_AXI_BYPASS_RVALID),
        .S00_AXI_wdata(xdma_0_M_AXI_BYPASS_WDATA),
        .S00_AXI_wlast(xdma_0_M_AXI_BYPASS_WLAST),
        .S00_AXI_wready(xdma_0_M_AXI_BYPASS_WREADY),
        .S00_AXI_wstrb(xdma_0_M_AXI_BYPASS_WSTRB),
        .S00_AXI_wvalid(xdma_0_M_AXI_BYPASS_WVALID),
        .aclk(xdma_0_axi_aclk),
        .aresetn(xdma_0_axi_aresetn));
  pcie_util_vector_logic_0_0 util_vector_logic_0
       (.Op1(mig_7series_0_ui_clk_sync_rst),
        .Res(util_vector_logic_0_Res));
  pcie_xdma_0_0 xdma_0
       (.axi_aclk(xdma_0_axi_aclk),
        .axi_aresetn(xdma_0_axi_aresetn),
        .cfg_mgmt_addr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_byte_enable({1'b0,1'b0,1'b0,1'b0}),
        .cfg_mgmt_read(1'b0),
        .cfg_mgmt_type1_cfg_reg_access(1'b0),
        .cfg_mgmt_write(1'b0),
        .cfg_mgmt_write_data({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_araddr(xdma_0_M_AXI_ARADDR),
        .m_axi_arburst(xdma_0_M_AXI_ARBURST),
        .m_axi_arcache(xdma_0_M_AXI_ARCACHE),
        .m_axi_arid(xdma_0_M_AXI_ARID),
        .m_axi_arlen(xdma_0_M_AXI_ARLEN),
        .m_axi_arlock(xdma_0_M_AXI_ARLOCK),
        .m_axi_arprot(xdma_0_M_AXI_ARPROT),
        .m_axi_arready(xdma_0_M_AXI_ARREADY),
        .m_axi_arsize(xdma_0_M_AXI_ARSIZE),
        .m_axi_arvalid(xdma_0_M_AXI_ARVALID),
        .m_axi_awaddr(xdma_0_M_AXI_AWADDR),
        .m_axi_awburst(xdma_0_M_AXI_AWBURST),
        .m_axi_awcache(xdma_0_M_AXI_AWCACHE),
        .m_axi_awid(xdma_0_M_AXI_AWID),
        .m_axi_awlen(xdma_0_M_AXI_AWLEN),
        .m_axi_awlock(xdma_0_M_AXI_AWLOCK),
        .m_axi_awprot(xdma_0_M_AXI_AWPROT),
        .m_axi_awready(xdma_0_M_AXI_AWREADY),
        .m_axi_awsize(xdma_0_M_AXI_AWSIZE),
        .m_axi_awvalid(xdma_0_M_AXI_AWVALID),
        .m_axi_bid(xdma_0_M_AXI_BID),
        .m_axi_bready(xdma_0_M_AXI_BREADY),
        .m_axi_bresp(xdma_0_M_AXI_BRESP),
        .m_axi_bvalid(xdma_0_M_AXI_BVALID),
        .m_axi_rdata(xdma_0_M_AXI_RDATA),
        .m_axi_rid(xdma_0_M_AXI_RID),
        .m_axi_rlast(xdma_0_M_AXI_RLAST),
        .m_axi_rready(xdma_0_M_AXI_RREADY),
        .m_axi_rresp(xdma_0_M_AXI_RRESP),
        .m_axi_rvalid(xdma_0_M_AXI_RVALID),
        .m_axi_wdata(xdma_0_M_AXI_WDATA),
        .m_axi_wlast(xdma_0_M_AXI_WLAST),
        .m_axi_wready(xdma_0_M_AXI_WREADY),
        .m_axi_wstrb(xdma_0_M_AXI_WSTRB),
        .m_axi_wvalid(xdma_0_M_AXI_WVALID),
        .m_axib_araddr(xdma_0_M_AXI_BYPASS_ARADDR),
        .m_axib_arburst(xdma_0_M_AXI_BYPASS_ARBURST),
        .m_axib_arcache(xdma_0_M_AXI_BYPASS_ARCACHE),
        .m_axib_arid(xdma_0_M_AXI_BYPASS_ARID),
        .m_axib_arlen(xdma_0_M_AXI_BYPASS_ARLEN),
        .m_axib_arlock(xdma_0_M_AXI_BYPASS_ARLOCK),
        .m_axib_arprot(xdma_0_M_AXI_BYPASS_ARPROT),
        .m_axib_arready(xdma_0_M_AXI_BYPASS_ARREADY),
        .m_axib_arsize(xdma_0_M_AXI_BYPASS_ARSIZE),
        .m_axib_arvalid(xdma_0_M_AXI_BYPASS_ARVALID),
        .m_axib_awaddr(xdma_0_M_AXI_BYPASS_AWADDR),
        .m_axib_awburst(xdma_0_M_AXI_BYPASS_AWBURST),
        .m_axib_awcache(xdma_0_M_AXI_BYPASS_AWCACHE),
        .m_axib_awid(xdma_0_M_AXI_BYPASS_AWID),
        .m_axib_awlen(xdma_0_M_AXI_BYPASS_AWLEN),
        .m_axib_awlock(xdma_0_M_AXI_BYPASS_AWLOCK),
        .m_axib_awprot(xdma_0_M_AXI_BYPASS_AWPROT),
        .m_axib_awready(xdma_0_M_AXI_BYPASS_AWREADY),
        .m_axib_awsize(xdma_0_M_AXI_BYPASS_AWSIZE),
        .m_axib_awvalid(xdma_0_M_AXI_BYPASS_AWVALID),
        .m_axib_bid(xdma_0_M_AXI_BYPASS_BID),
        .m_axib_bready(xdma_0_M_AXI_BYPASS_BREADY),
        .m_axib_bresp(xdma_0_M_AXI_BYPASS_BRESP),
        .m_axib_bvalid(xdma_0_M_AXI_BYPASS_BVALID),
        .m_axib_rdata(xdma_0_M_AXI_BYPASS_RDATA),
        .m_axib_rid(xdma_0_M_AXI_BYPASS_RID),
        .m_axib_rlast(xdma_0_M_AXI_BYPASS_RLAST),
        .m_axib_rready(xdma_0_M_AXI_BYPASS_RREADY),
        .m_axib_rresp(xdma_0_M_AXI_BYPASS_RRESP),
        .m_axib_rvalid(xdma_0_M_AXI_BYPASS_RVALID),
        .m_axib_wdata(xdma_0_M_AXI_BYPASS_WDATA),
        .m_axib_wlast(xdma_0_M_AXI_BYPASS_WLAST),
        .m_axib_wready(xdma_0_M_AXI_BYPASS_WREADY),
        .m_axib_wstrb(xdma_0_M_AXI_BYPASS_WSTRB),
        .m_axib_wvalid(xdma_0_M_AXI_BYPASS_WVALID),
        .m_axil_araddr(xdma_0_M_AXI_LITE_ARADDR),
        .m_axil_arprot(xdma_0_M_AXI_LITE_ARPROT),
        .m_axil_arready(xdma_0_M_AXI_LITE_ARREADY),
        .m_axil_arvalid(xdma_0_M_AXI_LITE_ARVALID),
        .m_axil_awaddr(xdma_0_M_AXI_LITE_AWADDR),
        .m_axil_awprot(xdma_0_M_AXI_LITE_AWPROT),
        .m_axil_awready(xdma_0_M_AXI_LITE_AWREADY),
        .m_axil_awvalid(xdma_0_M_AXI_LITE_AWVALID),
        .m_axil_bready(xdma_0_M_AXI_LITE_BREADY),
        .m_axil_bresp(xdma_0_M_AXI_LITE_BRESP),
        .m_axil_bvalid(xdma_0_M_AXI_LITE_BVALID),
        .m_axil_rdata(xdma_0_M_AXI_LITE_RDATA),
        .m_axil_rready(xdma_0_M_AXI_LITE_RREADY),
        .m_axil_rresp(xdma_0_M_AXI_LITE_RRESP),
        .m_axil_rvalid(xdma_0_M_AXI_LITE_RVALID),
        .m_axil_wdata(xdma_0_M_AXI_LITE_WDATA),
        .m_axil_wready(xdma_0_M_AXI_LITE_WREADY),
        .m_axil_wstrb(xdma_0_M_AXI_LITE_WSTRB),
        .m_axil_wvalid(xdma_0_M_AXI_LITE_WVALID),
        .pci_exp_rxn(xdma_0_pcie_mgt_rxn),
        .pci_exp_rxp(xdma_0_pcie_mgt_rxp),
        .pci_exp_txn(xdma_0_pcie_mgt_txn),
        .pci_exp_txp(xdma_0_pcie_mgt_txp),
        .sys_clk(sys_clk_0_1),
        .sys_rst_n(sys_rst_n_0_1),
        .user_lnk_up(xdma_0_user_lnk_up),
        .usr_irq_req(usr_irq_req_0_1));
endmodule
