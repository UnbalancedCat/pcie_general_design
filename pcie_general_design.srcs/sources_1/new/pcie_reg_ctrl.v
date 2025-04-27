`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/03 01:22:00
// Design Name: 
// Module Name: pcie_reg_ctrl
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module pcie_reg_ctrl(
    input               clk_i,      
    input               rst_i,        
    input               pcie_usr_clk,      
    input               pcie_usr_rst,      
    (*mark_debug = "true"*)input               reg_bus_fifo_full, 
    (*mark_debug = "true"*)input      [319:0]  reg_bus_fifo_din,  
    (*mark_debug = "true"*)output reg          reg_bus_fifo_we,   
    (*mark_debug = "true"*)input               reg_bus_fifo_empty,
    (*mark_debug = "true"*)input               reg_bus_fifo_almost_empty,
    (*mark_debug = "true"*)output reg          reg_bus_fifo_re,
    (*mark_debug = "true"*)output              reg_bus_we
);
    (*mark_debug = "true"*)reg [319:0] reg_bus_fifo_din_1d;
    (*mark_debug = "true"*)reg [319:0] reg_bus_fifo_din_pre;
    (*mark_debug = "true"*)reg         reg_bus_fifo_re_1d;

    always @(posedge pcie_usr_clk or posedge pcie_usr_rst) begin
        if(pcie_usr_rst) begin
            reg_bus_fifo_din_1d     <= 320'b0;
        end
        else if(reg_bus_fifo_full) begin
            reg_bus_fifo_din_1d     <= reg_bus_fifo_din_pre;
        end
        else begin
            reg_bus_fifo_din_1d     <= reg_bus_fifo_din;
        end
    end

    always @(posedge pcie_usr_clk or posedge pcie_usr_rst) begin
        if(pcie_usr_rst) begin
            reg_bus_fifo_din_pre     <= 320'b0;
        end
        else if(reg_bus_fifo_din_1d != reg_bus_fifo_din) begin
            reg_bus_fifo_din_pre    <= reg_bus_fifo_din_1d;
        end
        else begin
            reg_bus_fifo_din_pre     <= reg_bus_fifo_din_pre;
        end
    end

    always @(posedge pcie_usr_clk or posedge pcie_usr_rst) begin
        if(pcie_usr_rst) begin
            reg_bus_fifo_we     <= 1'b0;
        end
        else if(reg_bus_fifo_full) begin
            reg_bus_fifo_we     <= 1'b0;
        end
        else if(reg_bus_fifo_din_1d != reg_bus_fifo_din) begin
            reg_bus_fifo_we     <= 1'b1;
        end
        else begin
            reg_bus_fifo_we     <= 1'b0;
        end
    end
    
    always @(posedge clk_i or posedge rst_i) begin
        if(rst_i) begin
            reg_bus_fifo_re     <= 1'b0;
        end
        else begin
            casex({reg_bus_fifo_empty, reg_bus_fifo_re, reg_bus_fifo_almost_empty})
                3'b010, 3'b00x: begin
                    reg_bus_fifo_re <= 1'b1;
                end
                3'b011, 3'b1xx: begin
                    reg_bus_fifo_re <= 1'b0;
                end
                default begin
                    reg_bus_fifo_re <= 1'b0;
                end
            endcase
        end
    end

    always @(posedge clk_i or posedge rst_i) begin
        if(rst_i) begin
            reg_bus_fifo_re_1d     <= 1'b0;
        end
        else begin
            reg_bus_fifo_re_1d     <= reg_bus_fifo_re;
        end
    end

    assign reg_bus_we = reg_bus_fifo_re_1d;

endmodule