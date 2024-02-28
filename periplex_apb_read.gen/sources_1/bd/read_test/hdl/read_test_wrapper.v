//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Feb 27 15:46:21 2024
//Host        : DESKTOP-GH2P793 running 64-bit major release  (build 9200)
//Command     : generate_target read_test_wrapper.bd
//Design      : read_test_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module read_test_wrapper
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

  wire clk;
  wire [47:0]fifo_data_frame;
  wire fifo_w_en;
  wire otxactive;
  wire otxserial;
  wire [47:0]wr_data;
  wire wr_en;

  read_test read_test_i
       (.clk(clk),
        .fifo_data_frame(fifo_data_frame),
        .fifo_w_en(fifo_w_en),
        .otxactive(otxactive),
        .otxserial(otxserial),
        .wr_data(wr_data),
        .wr_en(wr_en));
endmodule
