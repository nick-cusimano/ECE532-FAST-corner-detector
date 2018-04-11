//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
//Date        : Mon Feb  5 00:27:11 2018
//Host        : Anthony running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (reset,
    servoPWM1,
    servoPWM2,
    sys_clock);
  input reset;
  output servoPWM1;
  output servoPWM2;
  input sys_clock;

  wire reset;
  wire servoPWM1;
  wire servoPWM2;
  wire sys_clock;

  design_1 design_1_i
       (.reset(reset),
        .servoPWM1(servoPWM1),
        .servoPWM2(servoPWM2),
        .sys_clock(sys_clock));
endmodule
