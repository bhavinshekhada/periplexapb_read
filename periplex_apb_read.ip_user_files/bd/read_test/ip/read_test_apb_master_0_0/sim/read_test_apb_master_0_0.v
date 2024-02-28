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


// IP VLNV: xilinx.com:module_ref:apb_master:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module read_test_apb_master_0_0 (
  pclk,
  valid,
  ext_psel,
  ext_write,
  ext_addr,
  pready,
  slv_prdata,
  slv_pwdata,
  pstrobe,
  psel,
  penable,
  pwrite,
  pwdataa,
  prdata,
  paddr,
  strobe,
  master_ready
);

input wire pclk;
input wire valid;
input wire [6 : 0] ext_psel;
input wire ext_write;
input wire [31 : 0] ext_addr;
input wire pready;
input wire [31 : 0] slv_prdata;
input wire [31 : 0] slv_pwdata;
input wire [1 : 0] pstrobe;
output wire psel;
output wire penable;
output wire pwrite;
output wire [31 : 0] pwdataa;
output wire [31 : 0] prdata;
output wire [31 : 0] paddr;
output wire [1 : 0] strobe;
output wire master_ready;

  apb_master #(
    .IDLE(2'B00),
    .SETUP(2'B01),
    .ACCESS(2'B10)
  ) inst (
    .pclk(pclk),
    .valid(valid),
    .ext_psel(ext_psel),
    .ext_write(ext_write),
    .ext_addr(ext_addr),
    .pready(pready),
    .slv_prdata(slv_prdata),
    .slv_pwdata(slv_pwdata),
    .pstrobe(pstrobe),
    .psel(psel),
    .penable(penable),
    .pwrite(pwrite),
    .pwdataa(pwdataa),
    .prdata(prdata),
    .paddr(paddr),
    .strobe(strobe),
    .master_ready(master_ready)
  );
endmodule
