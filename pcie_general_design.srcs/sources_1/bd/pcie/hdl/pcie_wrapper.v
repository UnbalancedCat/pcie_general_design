//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
//Date        : Sun Apr 27 20:38:49 2025
//Host        : BHKLaptop running 64-bit major release  (build 9200)
//Command     : generate_target pcie_wrapper.bd
//Design      : pcie_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module pcie_wrapper
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
  input [31:0]bram_addr;
  input bram_clk;
  input [31:0]bram_din;
  output [31:0]bram_dout;
  input bram_en;
  input bram_rst;
  input [3:0]bram_we;
  output [15:0]ddr_addr;
  output [2:0]ddr_ba;
  output ddr_cas_n;
  output [1:0]ddr_ck_n;
  output [1:0]ddr_ck_p;
  output [1:0]ddr_cke;
  output [1:0]ddr_cs_n;
  output [7:0]ddr_dm;
  inout [63:0]ddr_dq;
  inout [7:0]ddr_dqs_n;
  inout [7:0]ddr_dqs_p;
  output [1:0]ddr_odt;
  output ddr_ras_n;
  output ddr_reset_n;
  input [63:0]ddr_s_axi_araddr;
  input [1:0]ddr_s_axi_arburst;
  input [3:0]ddr_s_axi_arcache;
  input [3:0]ddr_s_axi_arid;
  input [7:0]ddr_s_axi_arlen;
  input [0:0]ddr_s_axi_arlock;
  input [2:0]ddr_s_axi_arprot;
  input [3:0]ddr_s_axi_arqos;
  output ddr_s_axi_arready;
  input [2:0]ddr_s_axi_arsize;
  input ddr_s_axi_arvalid;
  input [63:0]ddr_s_axi_awaddr;
  input [1:0]ddr_s_axi_awburst;
  input [3:0]ddr_s_axi_awcache;
  input [3:0]ddr_s_axi_awid;
  input [7:0]ddr_s_axi_awlen;
  input [0:0]ddr_s_axi_awlock;
  input [2:0]ddr_s_axi_awprot;
  input [3:0]ddr_s_axi_awqos;
  output ddr_s_axi_awready;
  input [2:0]ddr_s_axi_awsize;
  input ddr_s_axi_awvalid;
  output [3:0]ddr_s_axi_bid;
  input ddr_s_axi_bready;
  output [1:0]ddr_s_axi_bresp;
  output ddr_s_axi_bvalid;
  output [127:0]ddr_s_axi_rdata;
  output [3:0]ddr_s_axi_rid;
  output ddr_s_axi_rlast;
  input ddr_s_axi_rready;
  output [1:0]ddr_s_axi_rresp;
  output ddr_s_axi_rvalid;
  input [127:0]ddr_s_axi_wdata;
  input ddr_s_axi_wlast;
  output ddr_s_axi_wready;
  input [15:0]ddr_s_axi_wstrb;
  input ddr_s_axi_wvalid;
  output ddr_we_n;
  output init_calib_complete_o;
  input pcie_clk_i;
  output pcie_clk_o;
  input pcie_rst_n_i;
  output pcie_rst_n_o;
  input [7:0]pcie_rxn;
  input [7:0]pcie_rxp;
  output [7:0]pcie_txn;
  output [7:0]pcie_txp;
  output pcie_user_lnk_up_o;
  input [1:0]pcie_usr_irq_req_i;
  input [319:0]reg_bus_i;
  output [319:0]reg_bus_o;
  input sys_clk_i;
  input sys_rst_n_i;

  wire [31:0]bram_addr;
  wire bram_clk;
  wire [31:0]bram_din;
  wire [31:0]bram_dout;
  wire bram_en;
  wire bram_rst;
  wire [3:0]bram_we;
  wire [15:0]ddr_addr;
  wire [2:0]ddr_ba;
  wire ddr_cas_n;
  wire [1:0]ddr_ck_n;
  wire [1:0]ddr_ck_p;
  wire [1:0]ddr_cke;
  wire [1:0]ddr_cs_n;
  wire [7:0]ddr_dm;
  wire [63:0]ddr_dq;
  wire [7:0]ddr_dqs_n;
  wire [7:0]ddr_dqs_p;
  wire [1:0]ddr_odt;
  wire ddr_ras_n;
  wire ddr_reset_n;
  wire [63:0]ddr_s_axi_araddr;
  wire [1:0]ddr_s_axi_arburst;
  wire [3:0]ddr_s_axi_arcache;
  wire [3:0]ddr_s_axi_arid;
  wire [7:0]ddr_s_axi_arlen;
  wire [0:0]ddr_s_axi_arlock;
  wire [2:0]ddr_s_axi_arprot;
  wire [3:0]ddr_s_axi_arqos;
  wire ddr_s_axi_arready;
  wire [2:0]ddr_s_axi_arsize;
  wire ddr_s_axi_arvalid;
  wire [63:0]ddr_s_axi_awaddr;
  wire [1:0]ddr_s_axi_awburst;
  wire [3:0]ddr_s_axi_awcache;
  wire [3:0]ddr_s_axi_awid;
  wire [7:0]ddr_s_axi_awlen;
  wire [0:0]ddr_s_axi_awlock;
  wire [2:0]ddr_s_axi_awprot;
  wire [3:0]ddr_s_axi_awqos;
  wire ddr_s_axi_awready;
  wire [2:0]ddr_s_axi_awsize;
  wire ddr_s_axi_awvalid;
  wire [3:0]ddr_s_axi_bid;
  wire ddr_s_axi_bready;
  wire [1:0]ddr_s_axi_bresp;
  wire ddr_s_axi_bvalid;
  wire [127:0]ddr_s_axi_rdata;
  wire [3:0]ddr_s_axi_rid;
  wire ddr_s_axi_rlast;
  wire ddr_s_axi_rready;
  wire [1:0]ddr_s_axi_rresp;
  wire ddr_s_axi_rvalid;
  wire [127:0]ddr_s_axi_wdata;
  wire ddr_s_axi_wlast;
  wire ddr_s_axi_wready;
  wire [15:0]ddr_s_axi_wstrb;
  wire ddr_s_axi_wvalid;
  wire ddr_we_n;
  wire init_calib_complete_o;
  wire pcie_clk_i;
  wire pcie_clk_o;
  wire pcie_rst_n_i;
  wire pcie_rst_n_o;
  wire [7:0]pcie_rxn;
  wire [7:0]pcie_rxp;
  wire [7:0]pcie_txn;
  wire [7:0]pcie_txp;
  wire pcie_user_lnk_up_o;
  wire [1:0]pcie_usr_irq_req_i;
  wire [319:0]reg_bus_i;
  wire [319:0]reg_bus_o;
  wire sys_clk_i;
  wire sys_rst_n_i;

  pcie pcie_i
       (.bram_addr(bram_addr),
        .bram_clk(bram_clk),
        .bram_din(bram_din),
        .bram_dout(bram_dout),
        .bram_en(bram_en),
        .bram_rst(bram_rst),
        .bram_we(bram_we),
        .ddr_addr(ddr_addr),
        .ddr_ba(ddr_ba),
        .ddr_cas_n(ddr_cas_n),
        .ddr_ck_n(ddr_ck_n),
        .ddr_ck_p(ddr_ck_p),
        .ddr_cke(ddr_cke),
        .ddr_cs_n(ddr_cs_n),
        .ddr_dm(ddr_dm),
        .ddr_dq(ddr_dq),
        .ddr_dqs_n(ddr_dqs_n),
        .ddr_dqs_p(ddr_dqs_p),
        .ddr_odt(ddr_odt),
        .ddr_ras_n(ddr_ras_n),
        .ddr_reset_n(ddr_reset_n),
        .ddr_s_axi_araddr(ddr_s_axi_araddr),
        .ddr_s_axi_arburst(ddr_s_axi_arburst),
        .ddr_s_axi_arcache(ddr_s_axi_arcache),
        .ddr_s_axi_arid(ddr_s_axi_arid),
        .ddr_s_axi_arlen(ddr_s_axi_arlen),
        .ddr_s_axi_arlock(ddr_s_axi_arlock),
        .ddr_s_axi_arprot(ddr_s_axi_arprot),
        .ddr_s_axi_arqos(ddr_s_axi_arqos),
        .ddr_s_axi_arready(ddr_s_axi_arready),
        .ddr_s_axi_arsize(ddr_s_axi_arsize),
        .ddr_s_axi_arvalid(ddr_s_axi_arvalid),
        .ddr_s_axi_awaddr(ddr_s_axi_awaddr),
        .ddr_s_axi_awburst(ddr_s_axi_awburst),
        .ddr_s_axi_awcache(ddr_s_axi_awcache),
        .ddr_s_axi_awid(ddr_s_axi_awid),
        .ddr_s_axi_awlen(ddr_s_axi_awlen),
        .ddr_s_axi_awlock(ddr_s_axi_awlock),
        .ddr_s_axi_awprot(ddr_s_axi_awprot),
        .ddr_s_axi_awqos(ddr_s_axi_awqos),
        .ddr_s_axi_awready(ddr_s_axi_awready),
        .ddr_s_axi_awsize(ddr_s_axi_awsize),
        .ddr_s_axi_awvalid(ddr_s_axi_awvalid),
        .ddr_s_axi_bid(ddr_s_axi_bid),
        .ddr_s_axi_bready(ddr_s_axi_bready),
        .ddr_s_axi_bresp(ddr_s_axi_bresp),
        .ddr_s_axi_bvalid(ddr_s_axi_bvalid),
        .ddr_s_axi_rdata(ddr_s_axi_rdata),
        .ddr_s_axi_rid(ddr_s_axi_rid),
        .ddr_s_axi_rlast(ddr_s_axi_rlast),
        .ddr_s_axi_rready(ddr_s_axi_rready),
        .ddr_s_axi_rresp(ddr_s_axi_rresp),
        .ddr_s_axi_rvalid(ddr_s_axi_rvalid),
        .ddr_s_axi_wdata(ddr_s_axi_wdata),
        .ddr_s_axi_wlast(ddr_s_axi_wlast),
        .ddr_s_axi_wready(ddr_s_axi_wready),
        .ddr_s_axi_wstrb(ddr_s_axi_wstrb),
        .ddr_s_axi_wvalid(ddr_s_axi_wvalid),
        .ddr_we_n(ddr_we_n),
        .init_calib_complete_o(init_calib_complete_o),
        .pcie_clk_i(pcie_clk_i),
        .pcie_clk_o(pcie_clk_o),
        .pcie_rst_n_i(pcie_rst_n_i),
        .pcie_rst_n_o(pcie_rst_n_o),
        .pcie_rxn(pcie_rxn),
        .pcie_rxp(pcie_rxp),
        .pcie_txn(pcie_txn),
        .pcie_txp(pcie_txp),
        .pcie_user_lnk_up_o(pcie_user_lnk_up_o),
        .pcie_usr_irq_req_i(pcie_usr_irq_req_i),
        .reg_bus_i(reg_bus_i),
        .reg_bus_o(reg_bus_o),
        .sys_clk_i(sys_clk_i),
        .sys_rst_n_i(sys_rst_n_i));
endmodule
