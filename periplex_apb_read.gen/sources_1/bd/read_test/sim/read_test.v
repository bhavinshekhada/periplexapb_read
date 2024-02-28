//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb 27 15:46:21 2024
//Host        : DESKTOP-GH2P793 running 64-bit major release  (build 9200)
//Command     : generate_target read_test.bd
//Design      : read_test
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "read_test,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=read_test,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=6,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "read_test.hwdef" *) 
module read_test
   (clk,
    fifo_data_frame,
    fifo_w_en,
    otxactive,
    otxserial,
    wr_data,
    wr_en);
  input clk;
  output [47:0]fifo_data_frame;
  output fifo_w_en;
  output otxactive;
  output otxserial;
  input [47:0]wr_data;
  input wr_en;

  wire [47:0]Encodec_0_fifo_data_frame;
  wire Encodec_0_fifo_w_en;
  wire [31:0]Encodec_0_o_addr;
  wire [31:0]Encodec_0_o_data;
  wire Encodec_0_o_read_en;
  wire [6:0]Encodec_0_o_slave_sel;
  wire [1:0]Encodec_0_strobe;
  wire Encodec_0_valid;
  wire Encodec_0_write;
  wire FIFO_0_f_empty;
  wire [47:0]FIFO_0_rd_data;
  wire apb_master_0_master_ready;
  wire [31:0]apb_master_0_paddr;
  wire apb_master_0_penable;
  wire [31:0]apb_master_0_prdata;
  wire apb_master_0_psel;
  wire [31:0]apb_master_0_pwdataa;
  wire apb_master_0_pwrite;
  wire [1:0]apb_master_0_strobe;
  wire apb_slave_0_dv;
  wire [31:0]apb_slave_0_prdata_out;
  wire apb_slave_0_pready;
  wire [31:0]apb_slave_0_pwdata_out;
  wire clk_1;
  wire ctrl_uart_0_busy;
  wire ctrl_uart_0_dv;
  wire [7:0]ctrl_uart_0_tx_data;
  wire uart_tx_0_o_Tx_Active;
  wire uart_tx_0_o_Tx_Done;
  wire uart_tx_0_o_Tx_Serial;
  wire [47:0]wr_data_1;
  wire wr_en_1;

  assign clk_1 = clk;
  assign fifo_data_frame[47:0] = Encodec_0_fifo_data_frame;
  assign fifo_w_en = Encodec_0_fifo_w_en;
  assign otxactive = uart_tx_0_o_Tx_Active;
  assign otxserial = uart_tx_0_o_Tx_Serial;
  assign wr_data_1 = wr_data[47:0];
  assign wr_en_1 = wr_en;
  read_test_Encodec_0_0 Encodec_0
       (.APB_ready(apb_master_0_master_ready),
        .clk(clk_1),
        .f_empty(FIFO_0_f_empty),
        .fifo_data_frame(Encodec_0_fifo_data_frame),
        .fifo_w_en(Encodec_0_fifo_w_en),
        .i_Data_Frame(FIFO_0_rd_data),
        .i_read_data(apb_master_0_prdata),
        .o_addr(Encodec_0_o_addr),
        .o_data(Encodec_0_o_data),
        .o_read_en(Encodec_0_o_read_en),
        .o_slave_sel(Encodec_0_o_slave_sel),
        .strobe(Encodec_0_strobe),
        .valid(Encodec_0_valid),
        .write(Encodec_0_write));
  read_test_FIFO_0_0 FIFO_0
       (.clk(clk_1),
        .f_empty(FIFO_0_f_empty),
        .rd_data(FIFO_0_rd_data),
        .rd_en(Encodec_0_o_read_en),
        .wr_data(wr_data_1),
        .wr_en(wr_en_1));
  read_test_apb_master_0_0 apb_master_0
       (.ext_addr(Encodec_0_o_addr),
        .ext_psel(Encodec_0_o_slave_sel),
        .ext_write(Encodec_0_write),
        .master_ready(apb_master_0_master_ready),
        .paddr(apb_master_0_paddr),
        .pclk(clk_1),
        .penable(apb_master_0_penable),
        .prdata(apb_master_0_prdata),
        .pready(apb_slave_0_pready),
        .psel(apb_master_0_psel),
        .pstrobe(Encodec_0_strobe),
        .pwdataa(apb_master_0_pwdataa),
        .pwrite(apb_master_0_pwrite),
        .slv_prdata(apb_slave_0_prdata_out),
        .slv_pwdata(Encodec_0_o_data),
        .strobe(apb_master_0_strobe),
        .valid(Encodec_0_valid));
  read_test_apb_slave_0_0 apb_slave_0
       (.dv(apb_slave_0_dv),
        .p_strobe(apb_master_0_strobe),
        .paddr(apb_master_0_paddr),
        .pclk(clk_1),
        .penable(apb_master_0_penable),
        .prdata_out(apb_slave_0_prdata_out),
        .pready(apb_slave_0_pready),
        .psel(apb_master_0_psel),
        .pwdata(apb_master_0_pwdataa),
        .pwdata_out(apb_slave_0_pwdata_out),
        .pwrite(apb_master_0_pwrite),
        .u_busy(ctrl_uart_0_busy));
  read_test_ctrl_uart_0_0 ctrl_uart_0
       (.busy(ctrl_uart_0_busy),
        .clk(clk_1),
        .data_write(apb_slave_0_pwdata_out),
        .done(uart_tx_0_o_Tx_Done),
        .dv(ctrl_uart_0_dv),
        .enable(apb_slave_0_dv),
        .s_strobe(apb_master_0_strobe),
        .tx_data(ctrl_uart_0_tx_data));
  read_test_uart_tx_0_0 uart_tx_0
       (.i_Clock(clk_1),
        .i_Tx_Byte(ctrl_uart_0_tx_data),
        .i_Tx_DV(ctrl_uart_0_dv),
        .o_Tx_Active(uart_tx_0_o_Tx_Active),
        .o_Tx_Done(uart_tx_0_o_Tx_Done),
        .o_Tx_Serial(uart_tx_0_o_Tx_Serial));
endmodule
