`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 24.02.2024 14:23:24
// Design Name: 
// Module Name: Testbench
//////////////////////////////////////////////////////////////////////////////////

module Testbench();

  wire otxactive;
  wire otxserial;
  reg clk;
  reg preset_n;
  reg [47:0]wr_data;
  reg wr_en;
  wire [47:0] fifo_data_frame;
  wire fifo_w_en;


  read_test read_test_i
  (clk,
   fifo_data_frame,
   fifo_w_en,
   otxactive,
  otxserial,
   wr_data,
   wr_en);

/*
design_1_wrapper design_1
   (Tx_Active,
    Tx_Serial,
    clk,
    preset_n,
    wr_data,
    wr_en);

*/
    
    initial 
    begin
        clk = 1;
        wr_data = 48'bx;
        wr_en = 0;
        preset_n = 0;
    end
    
    always #5 clk = ~clk;
    
    initial
    begin
        # 10 preset_n = 1;
        // Write Data Frame
            wr_data = 48'h8104abcdef00;
        #10 wr_en =1;
        #10 wr_data = 48'h000312345670;
        #10 wr_data = 48'h000312345671;
        #10 wr_data = 48'h000312345672;
        #10 wr_data = 48'h000312345673;
//        #10 wr_data = 48'h000312345674;
//        #10 wr_data = 48'h000112345675;
//        #10 wr_data = 48'h000212345676;
//        #10 wr_data = 48'h000412345677;
        // Read Data Frame
        #10 wr_data = 48'h0101abcdef00;
        
////        // Write Data Frame
//        #10 wr_data = 48'h8109abeeef07;
//        #10 wr_data = 48'h000398765430;
//        #10 wr_data = 48'h000298765431;
//        #10 wr_data = 48'h000198765432;
//        #10 wr_data = 48'h000398765433;
//        #10 wr_data = 48'h000298765434;
//        #10 wr_data = 48'h000198765435;
//        #10 wr_data = 48'h000098765436;
//        #10 wr_data = 48'h000398765437;
//        #10 wr_data = 48'h000398765438;
//          // Read Data Frame
////        #10 wr_data = 48'h0108adfcba00;
////        // Write Data Frame
//        #10 wr_data = 48'h8102abeeef07;
//        #10 wr_data = 48'h000374125890;
//        #10 wr_data = 48'h000074125891;
        #10 wr_en =0;
            wr_data = 48'hx;   
            
    end
    
    
//    initial #250000 $stop;
endmodule