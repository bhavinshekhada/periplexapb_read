// (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// (c) Copyright 2022-2024 Advanced Micro Devices, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of AMD and is protected under U.S. and international copyright
// and other intellectual property laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// AMD, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND AMD HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) AMD shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or AMD had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// AMD products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of AMD products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:Encodec:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module read_test_Encodec_0_0 (
  clk,
  f_empty,
  i_Data_Frame,
  o_read_en,
  i_read_data,
  APB_ready,
  o_addr,
  o_data,
  o_slave_sel,
  write,
  valid,
  strobe,
  fifo_data_frame,
  fifo_w_en
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;
input wire f_empty;
input wire [47 : 0] i_Data_Frame;
output wire o_read_en;
input wire [31 : 0] i_read_data;
input wire APB_ready;
output wire [31 : 0] o_addr;
output wire [31 : 0] o_data;
output wire [6 : 0] o_slave_sel;
output wire write;
output wire valid;
output wire [1 : 0] strobe;
output wire [47 : 0] fifo_data_frame;
output wire fifo_w_en;

  Encodec #(
    .IDLE(4'B0000),
    .FIFO_READ(4'B0001),
    .DATA_SAMPLE(4'B0010),
    .DATA_DECODE(4'B0011),
    .W_FIFO_READ(4'B0100),
    .W_DATA_WRITE(4'B0101),
    .W_ACK(4'B0110),
    .R_FIFO_WRITE(4'B0111),
    .R_ADDR(4'B1000),
    .R_ACK(4'B1001),
    .R_DATA_FIFO_WRITE(4'B1010)
  ) inst (
    .clk(clk),
    .f_empty(f_empty),
    .i_Data_Frame(i_Data_Frame),
    .o_read_en(o_read_en),
    .i_read_data(i_read_data),
    .APB_ready(APB_ready),
    .o_addr(o_addr),
    .o_data(o_data),
    .o_slave_sel(o_slave_sel),
    .write(write),
    .valid(valid),
    .strobe(strobe),
    .fifo_data_frame(fifo_data_frame),
    .fifo_w_en(fifo_w_en)
  );
endmodule
