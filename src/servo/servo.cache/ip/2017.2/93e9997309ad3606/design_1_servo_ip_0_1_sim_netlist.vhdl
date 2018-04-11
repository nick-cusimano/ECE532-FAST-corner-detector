-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.2 (win64) Build 1909853 Thu Jun 15 18:39:09 MDT 2017
-- Date        : Sun Feb  4 22:51:31 2018
-- Host        : Anthony running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_servo_ip_0_1_sim_netlist.vhdl
-- Design      : design_1_servo_ip_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0_S00_AXI is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    servoPWM1 : out STD_LOGIC;
    servoPWM2 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0_S00_AXI;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0_S00_AXI is
  signal \SERVO_PWM1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_n_1\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_n_2\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__0_n_3\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_5_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_i_6_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_n_1\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_n_2\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__1_n_3\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_n_0\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_n_1\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_n_2\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__2_n_3\ : STD_LOGIC;
  signal \SERVO_PWM1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal SERVO_PWM1_carry_i_1_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_2_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_3_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_4_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_5_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_6_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_7_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_i_8_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_n_0 : STD_LOGIC;
  signal SERVO_PWM1_carry_n_1 : STD_LOGIC;
  signal SERVO_PWM1_carry_n_2 : STD_LOGIC;
  signal SERVO_PWM1_carry_n_3 : STD_LOGIC;
  signal \SERVO_PWM2_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SERVO_PWM2_carry__0_i_2_n_0\ : STD_LOGIC;
  signal SERVO_PWM2_carry_i_1_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_2_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_3_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_4_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_5_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_6_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_7_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_i_8_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_n_0 : STD_LOGIC;
  signal SERVO_PWM2_carry_n_1 : STD_LOGIC;
  signal SERVO_PWM2_carry_n_2 : STD_LOGIC;
  signal SERVO_PWM2_carry_n_3 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal \axi_awaddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_awaddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_awready_i_1_n_0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_rdata[0]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[10]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[11]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[12]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[13]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[14]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[15]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[16]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[17]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[18]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[19]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[20]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[21]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[22]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[23]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[24]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[25]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[26]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[27]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[28]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[29]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[2]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[30]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[31]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[3]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[4]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[5]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[6]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[8]_i_2_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_1_n_0\ : STD_LOGIC;
  signal \axi_rdata[9]_i_2_n_0\ : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal \counterPeriod1[0]_i_10_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_11_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_12_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_13_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_15_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_16_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_17_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_18_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_20_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_21_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_22_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_23_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_25_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_26_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_27_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_28_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_29_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_30_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_32_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_33_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_34_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_35_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_37_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_38_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_39_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_40_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_42_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_43_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_44_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_45_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_46_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_47_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_48_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_49_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_6_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_7_n_0\ : STD_LOGIC;
  signal \counterPeriod1[0]_i_8_n_0\ : STD_LOGIC;
  signal \counterPeriod1[12]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[12]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[12]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[12]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[16]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[16]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[16]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[16]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[20]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[20]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[20]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[20]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[24]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[24]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[24]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[24]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[28]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[28]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[28]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[28]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[32]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[4]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[4]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[4]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[4]_i_5_n_0\ : STD_LOGIC;
  signal \counterPeriod1[8]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1[8]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1[8]_i_4_n_0\ : STD_LOGIC;
  signal \counterPeriod1[8]_i_5_n_0\ : STD_LOGIC;
  signal counterPeriod1_reg : STD_LOGIC_VECTOR ( 32 downto 0 );
  signal \counterPeriod1_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_14_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_14_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_14_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_19_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_19_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_19_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_19_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_24_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_24_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_24_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_24_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_2_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_31_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_31_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_31_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_31_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_36_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_36_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_36_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_36_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_41_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_41_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_41_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_41_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_9_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[0]_i_9_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[32]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \counterPeriod1_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_bvalid\ : STD_LOGIC;
  signal \^s00_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s00_axi_rvalid\ : STD_LOGIC;
  signal slv_reg0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal slv_reg1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg1[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg1[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg2[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg2[7]_i_1_n_0\ : STD_LOGIC;
  signal slv_reg3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \slv_reg3[15]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[23]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[31]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg3[7]_i_1_n_0\ : STD_LOGIC;
  signal \slv_reg_wren__0\ : STD_LOGIC;
  signal NLW_SERVO_PWM1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SERVO_PWM1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SERVO_PWM1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SERVO_PWM1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SERVO_PWM1_carry__3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SERVO_PWM1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SERVO_PWM2_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SERVO_PWM2_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_SERVO_PWM2_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_counterPeriod1_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_19_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_24_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_31_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_36_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_41_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[0]_i_9_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[32]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counterPeriod1_reg[32]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  S_AXI_WREADY <= \^s_axi_wready\;
  s00_axi_bvalid <= \^s00_axi_bvalid\;
  s00_axi_rdata(31 downto 0) <= \^s00_axi_rdata\(31 downto 0);
  s00_axi_rvalid <= \^s00_axi_rvalid\;
SERVO_PWM1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SERVO_PWM1_carry_n_0,
      CO(2) => SERVO_PWM1_carry_n_1,
      CO(1) => SERVO_PWM1_carry_n_2,
      CO(0) => SERVO_PWM1_carry_n_3,
      CYINIT => '0',
      DI(3) => SERVO_PWM1_carry_i_1_n_0,
      DI(2) => SERVO_PWM1_carry_i_2_n_0,
      DI(1) => SERVO_PWM1_carry_i_3_n_0,
      DI(0) => SERVO_PWM1_carry_i_4_n_0,
      O(3 downto 0) => NLW_SERVO_PWM1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SERVO_PWM1_carry_i_5_n_0,
      S(2) => SERVO_PWM1_carry_i_6_n_0,
      S(1) => SERVO_PWM1_carry_i_7_n_0,
      S(0) => SERVO_PWM1_carry_i_8_n_0
    );
\SERVO_PWM1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SERVO_PWM1_carry_n_0,
      CO(3) => \SERVO_PWM1_carry__0_n_0\,
      CO(2) => \SERVO_PWM1_carry__0_n_1\,
      CO(1) => \SERVO_PWM1_carry__0_n_2\,
      CO(0) => \SERVO_PWM1_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \SERVO_PWM1_carry__0_i_1_n_0\,
      DI(1) => '0',
      DI(0) => \SERVO_PWM1_carry__0_i_2_n_0\,
      O(3 downto 0) => \NLW_SERVO_PWM1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SERVO_PWM1_carry__0_i_3_n_0\,
      S(2) => \SERVO_PWM1_carry__0_i_4_n_0\,
      S(1) => \SERVO_PWM1_carry__0_i_5_n_0\,
      S(0) => \SERVO_PWM1_carry__0_i_6_n_0\
    );
\SERVO_PWM1_carry__0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => counterPeriod1_reg(12),
      I1 => slv_reg0(1),
      I2 => slv_reg0(0),
      I3 => counterPeriod1_reg(13),
      O => \SERVO_PWM1_carry__0_i_1_n_0\
    );
\SERVO_PWM1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(9),
      O => \SERVO_PWM1_carry__0_i_2_n_0\
    );
\SERVO_PWM1_carry__0_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(14),
      I1 => counterPeriod1_reg(15),
      O => \SERVO_PWM1_carry__0_i_3_n_0\
    );
\SERVO_PWM1_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(12),
      I3 => counterPeriod1_reg(13),
      O => \SERVO_PWM1_carry__0_i_4_n_0\
    );
\SERVO_PWM1_carry__0_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(10),
      I1 => counterPeriod1_reg(11),
      O => \SERVO_PWM1_carry__0_i_5_n_0\
    );
\SERVO_PWM1_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(9),
      I3 => counterPeriod1_reg(8),
      O => \SERVO_PWM1_carry__0_i_6_n_0\
    );
\SERVO_PWM1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SERVO_PWM1_carry__0_n_0\,
      CO(3) => \SERVO_PWM1_carry__1_n_0\,
      CO(2) => \SERVO_PWM1_carry__1_n_1\,
      CO(1) => \SERVO_PWM1_carry__1_n_2\,
      CO(0) => \SERVO_PWM1_carry__1_n_3\,
      CYINIT => '0',
      DI(3) => \SERVO_PWM1_carry__1_i_1_n_0\,
      DI(2 downto 1) => B"00",
      DI(0) => \SERVO_PWM1_carry__1_i_2_n_0\,
      O(3 downto 0) => \NLW_SERVO_PWM1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \SERVO_PWM1_carry__1_i_3_n_0\,
      S(2) => \SERVO_PWM1_carry__1_i_4_n_0\,
      S(1) => \SERVO_PWM1_carry__1_i_5_n_0\,
      S(0) => \SERVO_PWM1_carry__1_i_6_n_0\
    );
\SERVO_PWM1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(23),
      O => \SERVO_PWM1_carry__1_i_1_n_0\
    );
\SERVO_PWM1_carry__1_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0070"
    )
        port map (
      I0 => counterPeriod1_reg(16),
      I1 => counterPeriod1_reg(17),
      I2 => slv_reg0(1),
      I3 => slv_reg0(0),
      O => \SERVO_PWM1_carry__1_i_2_n_0\
    );
\SERVO_PWM1_carry__1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(23),
      I3 => counterPeriod1_reg(22),
      O => \SERVO_PWM1_carry__1_i_3_n_0\
    );
\SERVO_PWM1_carry__1_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(20),
      I1 => counterPeriod1_reg(21),
      O => \SERVO_PWM1_carry__1_i_4_n_0\
    );
\SERVO_PWM1_carry__1_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(18),
      I1 => counterPeriod1_reg(19),
      O => \SERVO_PWM1_carry__1_i_5_n_0\
    );
\SERVO_PWM1_carry__1_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0851"
    )
        port map (
      I0 => counterPeriod1_reg(17),
      I1 => slv_reg0(1),
      I2 => slv_reg0(0),
      I3 => counterPeriod1_reg(16),
      O => \SERVO_PWM1_carry__1_i_6_n_0\
    );
\SERVO_PWM1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \SERVO_PWM1_carry__1_n_0\,
      CO(3) => \SERVO_PWM1_carry__2_n_0\,
      CO(2) => \SERVO_PWM1_carry__2_n_1\,
      CO(1) => \SERVO_PWM1_carry__2_n_2\,
      CO(0) => \SERVO_PWM1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SERVO_PWM1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \SERVO_PWM1_carry__2_i_1_n_0\,
      S(2) => \SERVO_PWM1_carry__2_i_2_n_0\,
      S(1) => \SERVO_PWM1_carry__2_i_3_n_0\,
      S(0) => \SERVO_PWM1_carry__2_i_4_n_0\
    );
\SERVO_PWM1_carry__2_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(30),
      I1 => counterPeriod1_reg(31),
      O => \SERVO_PWM1_carry__2_i_1_n_0\
    );
\SERVO_PWM1_carry__2_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(28),
      I1 => counterPeriod1_reg(29),
      O => \SERVO_PWM1_carry__2_i_2_n_0\
    );
\SERVO_PWM1_carry__2_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(26),
      I1 => counterPeriod1_reg(27),
      O => \SERVO_PWM1_carry__2_i_3_n_0\
    );
\SERVO_PWM1_carry__2_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(24),
      I1 => counterPeriod1_reg(25),
      O => \SERVO_PWM1_carry__2_i_4_n_0\
    );
\SERVO_PWM1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \SERVO_PWM1_carry__2_n_0\,
      CO(3 downto 1) => \NLW_SERVO_PWM1_carry__3_CO_UNCONNECTED\(3 downto 1),
      CO(0) => servoPWM1,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SERVO_PWM1_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \SERVO_PWM1_carry__3_i_1_n_0\
    );
\SERVO_PWM1_carry__3_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(32),
      O => \SERVO_PWM1_carry__3_i_1_n_0\
    );
SERVO_PWM1_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => counterPeriod1_reg(6),
      I1 => slv_reg0(1),
      I2 => slv_reg0(0),
      I3 => counterPeriod1_reg(7),
      O => SERVO_PWM1_carry_i_1_n_0
    );
SERVO_PWM1_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"007D"
    )
        port map (
      I0 => counterPeriod1_reg(4),
      I1 => slv_reg0(1),
      I2 => slv_reg0(0),
      I3 => counterPeriod1_reg(5),
      O => SERVO_PWM1_carry_i_2_n_0
    );
SERVO_PWM1_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0170"
    )
        port map (
      I0 => counterPeriod1_reg(2),
      I1 => counterPeriod1_reg(3),
      I2 => slv_reg0(1),
      I3 => slv_reg0(0),
      O => SERVO_PWM1_carry_i_3_n_0
    );
SERVO_PWM1_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00DF"
    )
        port map (
      I0 => counterPeriod1_reg(0),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      I3 => counterPeriod1_reg(1),
      O => SERVO_PWM1_carry_i_4_n_0
    );
SERVO_PWM1_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"004B"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(6),
      I3 => counterPeriod1_reg(7),
      O => SERVO_PWM1_carry_i_5_n_0
    );
SERVO_PWM1_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4128"
    )
        port map (
      I0 => counterPeriod1_reg(5),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      I3 => counterPeriod1_reg(4),
      O => SERVO_PWM1_carry_i_6_n_0
    );
SERVO_PWM1_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2049"
    )
        port map (
      I0 => counterPeriod1_reg(2),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      I3 => counterPeriod1_reg(3),
      O => SERVO_PWM1_carry_i_7_n_0
    );
SERVO_PWM1_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"108A"
    )
        port map (
      I0 => counterPeriod1_reg(1),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      I3 => counterPeriod1_reg(0),
      O => SERVO_PWM1_carry_i_8_n_0
    );
SERVO_PWM2_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SERVO_PWM2_carry_n_0,
      CO(2) => SERVO_PWM2_carry_n_1,
      CO(1) => SERVO_PWM2_carry_n_2,
      CO(0) => SERVO_PWM2_carry_n_3,
      CYINIT => '1',
      DI(3) => SERVO_PWM2_carry_i_1_n_0,
      DI(2) => SERVO_PWM2_carry_i_2_n_0,
      DI(1) => SERVO_PWM2_carry_i_3_n_0,
      DI(0) => SERVO_PWM2_carry_i_4_n_0,
      O(3 downto 0) => NLW_SERVO_PWM2_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SERVO_PWM2_carry_i_5_n_0,
      S(2) => SERVO_PWM2_carry_i_6_n_0,
      S(1) => SERVO_PWM2_carry_i_7_n_0,
      S(0) => SERVO_PWM2_carry_i_8_n_0
    );
\SERVO_PWM2_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SERVO_PWM2_carry_n_0,
      CO(3 downto 1) => \NLW_SERVO_PWM2_carry__0_CO_UNCONNECTED\(3 downto 1),
      CO(0) => servoPWM2,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => \SERVO_PWM2_carry__0_i_1_n_0\,
      O(3 downto 0) => \NLW_SERVO_PWM2_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \SERVO_PWM2_carry__0_i_2_n_0\
    );
\SERVO_PWM2_carry__0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => \SERVO_PWM2_carry__0_i_1_n_0\
    );
\SERVO_PWM2_carry__0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => \SERVO_PWM2_carry__0_i_2_n_0\
    );
SERVO_PWM2_carry_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => SERVO_PWM2_carry_i_1_n_0
    );
SERVO_PWM2_carry_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => SERVO_PWM2_carry_i_2_n_0
    );
SERVO_PWM2_carry_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => SERVO_PWM2_carry_i_3_n_0
    );
SERVO_PWM2_carry_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => SERVO_PWM2_carry_i_4_n_0
    );
SERVO_PWM2_carry_i_5: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => SERVO_PWM2_carry_i_5_n_0
    );
SERVO_PWM2_carry_i_6: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => SERVO_PWM2_carry_i_6_n_0
    );
SERVO_PWM2_carry_i_7: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => SERVO_PWM2_carry_i_7_n_0
    );
SERVO_PWM2_carry_i_8: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      O => SERVO_PWM2_carry_i_8_n_0
    );
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFC4CCC4CCC4CC"
    )
        port map (
      I0 => s00_axi_wvalid,
      I1 => aw_en_reg_n_0,
      I2 => \^s_axi_awready\,
      I3 => s00_axi_awvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => axi_awready_i_1_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(0),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s00_axi_araddr(1),
      I1 => s00_axi_arvalid,
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => axi_awready_i_1_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => axi_awready_i_1_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s00_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s_axi_arready\,
      R => axi_awready_i_1_n_0
    );
\axi_awaddr[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(0),
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(0),
      O => \axi_awaddr[2]_i_1_n_0\
    );
\axi_awaddr[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFFFFFF08000000"
    )
        port map (
      I0 => s00_axi_awaddr(1),
      I1 => s00_axi_awvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
      I4 => s00_axi_wvalid,
      I5 => p_0_in(1),
      O => \axi_awaddr[3]_i_1_n_0\
    );
\axi_awaddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[2]_i_1_n_0\,
      Q => p_0_in(0),
      R => axi_awready_i_1_n_0
    );
\axi_awaddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_awaddr[3]_i_1_n_0\,
      Q => p_0_in(1),
      R => axi_awready_i_1_n_0
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s00_axi_aresetn,
      O => axi_awready_i_1_n_0
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => s00_axi_awvalid,
      I1 => \^s_axi_awready\,
      I2 => aw_en_reg_n_0,
      I3 => s00_axi_wvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s_axi_awready\,
      R => axi_awready_i_1_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      I4 => s00_axi_bready,
      I5 => \^s00_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s00_axi_bvalid\,
      R => axi_awready_i_1_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[0]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(0),
      O => \axi_rdata[0]_i_1_n_0\
    );
\axi_rdata[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(0),
      I1 => slv_reg1(0),
      I2 => axi_araddr(2),
      I3 => slv_reg2(0),
      I4 => axi_araddr(3),
      I5 => slv_reg0(0),
      O => \axi_rdata[0]_i_2_n_0\
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[10]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(10),
      O => \axi_rdata[10]_i_1_n_0\
    );
\axi_rdata[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(10),
      I1 => slv_reg1(10),
      I2 => axi_araddr(2),
      I3 => slv_reg2(10),
      I4 => axi_araddr(3),
      I5 => slv_reg0(10),
      O => \axi_rdata[10]_i_2_n_0\
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[11]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(11),
      O => \axi_rdata[11]_i_1_n_0\
    );
\axi_rdata[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(11),
      I1 => slv_reg1(11),
      I2 => axi_araddr(2),
      I3 => slv_reg2(11),
      I4 => axi_araddr(3),
      I5 => slv_reg0(11),
      O => \axi_rdata[11]_i_2_n_0\
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[12]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(12),
      O => \axi_rdata[12]_i_1_n_0\
    );
\axi_rdata[12]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(12),
      I1 => slv_reg1(12),
      I2 => axi_araddr(2),
      I3 => slv_reg2(12),
      I4 => axi_araddr(3),
      I5 => slv_reg0(12),
      O => \axi_rdata[12]_i_2_n_0\
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[13]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(13),
      O => \axi_rdata[13]_i_1_n_0\
    );
\axi_rdata[13]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(13),
      I1 => slv_reg1(13),
      I2 => axi_araddr(2),
      I3 => slv_reg2(13),
      I4 => axi_araddr(3),
      I5 => slv_reg0(13),
      O => \axi_rdata[13]_i_2_n_0\
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[14]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(14),
      O => \axi_rdata[14]_i_1_n_0\
    );
\axi_rdata[14]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(14),
      I1 => slv_reg1(14),
      I2 => axi_araddr(2),
      I3 => slv_reg2(14),
      I4 => axi_araddr(3),
      I5 => slv_reg0(14),
      O => \axi_rdata[14]_i_2_n_0\
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[15]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(15),
      O => \axi_rdata[15]_i_1_n_0\
    );
\axi_rdata[15]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(15),
      I1 => slv_reg1(15),
      I2 => axi_araddr(2),
      I3 => slv_reg2(15),
      I4 => axi_araddr(3),
      I5 => slv_reg0(15),
      O => \axi_rdata[15]_i_2_n_0\
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[16]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(16),
      O => \axi_rdata[16]_i_1_n_0\
    );
\axi_rdata[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(16),
      I1 => slv_reg1(16),
      I2 => axi_araddr(2),
      I3 => slv_reg2(16),
      I4 => axi_araddr(3),
      I5 => slv_reg0(16),
      O => \axi_rdata[16]_i_2_n_0\
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[17]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(17),
      O => \axi_rdata[17]_i_1_n_0\
    );
\axi_rdata[17]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(17),
      I1 => slv_reg1(17),
      I2 => axi_araddr(2),
      I3 => slv_reg2(17),
      I4 => axi_araddr(3),
      I5 => slv_reg0(17),
      O => \axi_rdata[17]_i_2_n_0\
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[18]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(18),
      O => \axi_rdata[18]_i_1_n_0\
    );
\axi_rdata[18]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(18),
      I1 => slv_reg1(18),
      I2 => axi_araddr(2),
      I3 => slv_reg2(18),
      I4 => axi_araddr(3),
      I5 => slv_reg0(18),
      O => \axi_rdata[18]_i_2_n_0\
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[19]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(19),
      O => \axi_rdata[19]_i_1_n_0\
    );
\axi_rdata[19]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(19),
      I1 => slv_reg1(19),
      I2 => axi_araddr(2),
      I3 => slv_reg2(19),
      I4 => axi_araddr(3),
      I5 => slv_reg0(19),
      O => \axi_rdata[19]_i_2_n_0\
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[1]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(1),
      O => \axi_rdata[1]_i_1_n_0\
    );
\axi_rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(1),
      I1 => slv_reg1(1),
      I2 => axi_araddr(2),
      I3 => slv_reg2(1),
      I4 => axi_araddr(3),
      I5 => slv_reg0(1),
      O => \axi_rdata[1]_i_2_n_0\
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[20]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(20),
      O => \axi_rdata[20]_i_1_n_0\
    );
\axi_rdata[20]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(20),
      I1 => slv_reg1(20),
      I2 => axi_araddr(2),
      I3 => slv_reg2(20),
      I4 => axi_araddr(3),
      I5 => slv_reg0(20),
      O => \axi_rdata[20]_i_2_n_0\
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[21]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(21),
      O => \axi_rdata[21]_i_1_n_0\
    );
\axi_rdata[21]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(21),
      I1 => slv_reg1(21),
      I2 => axi_araddr(2),
      I3 => slv_reg2(21),
      I4 => axi_araddr(3),
      I5 => slv_reg0(21),
      O => \axi_rdata[21]_i_2_n_0\
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[22]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(22),
      O => \axi_rdata[22]_i_1_n_0\
    );
\axi_rdata[22]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(22),
      I1 => slv_reg1(22),
      I2 => axi_araddr(2),
      I3 => slv_reg2(22),
      I4 => axi_araddr(3),
      I5 => slv_reg0(22),
      O => \axi_rdata[22]_i_2_n_0\
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[23]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(23),
      O => \axi_rdata[23]_i_1_n_0\
    );
\axi_rdata[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(23),
      I1 => slv_reg1(23),
      I2 => axi_araddr(2),
      I3 => slv_reg2(23),
      I4 => axi_araddr(3),
      I5 => slv_reg0(23),
      O => \axi_rdata[23]_i_2_n_0\
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[24]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(24),
      O => \axi_rdata[24]_i_1_n_0\
    );
\axi_rdata[24]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(24),
      I1 => slv_reg1(24),
      I2 => axi_araddr(2),
      I3 => slv_reg2(24),
      I4 => axi_araddr(3),
      I5 => slv_reg0(24),
      O => \axi_rdata[24]_i_2_n_0\
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[25]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(25),
      O => \axi_rdata[25]_i_1_n_0\
    );
\axi_rdata[25]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(25),
      I1 => slv_reg1(25),
      I2 => axi_araddr(2),
      I3 => slv_reg2(25),
      I4 => axi_araddr(3),
      I5 => slv_reg0(25),
      O => \axi_rdata[25]_i_2_n_0\
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[26]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(26),
      O => \axi_rdata[26]_i_1_n_0\
    );
\axi_rdata[26]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(26),
      I1 => slv_reg1(26),
      I2 => axi_araddr(2),
      I3 => slv_reg2(26),
      I4 => axi_araddr(3),
      I5 => slv_reg0(26),
      O => \axi_rdata[26]_i_2_n_0\
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[27]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(27),
      O => \axi_rdata[27]_i_1_n_0\
    );
\axi_rdata[27]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(27),
      I1 => slv_reg1(27),
      I2 => axi_araddr(2),
      I3 => slv_reg2(27),
      I4 => axi_araddr(3),
      I5 => slv_reg0(27),
      O => \axi_rdata[27]_i_2_n_0\
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[28]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(28),
      O => \axi_rdata[28]_i_1_n_0\
    );
\axi_rdata[28]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(28),
      I1 => slv_reg1(28),
      I2 => axi_araddr(2),
      I3 => slv_reg2(28),
      I4 => axi_araddr(3),
      I5 => slv_reg0(28),
      O => \axi_rdata[28]_i_2_n_0\
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[29]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(29),
      O => \axi_rdata[29]_i_1_n_0\
    );
\axi_rdata[29]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(29),
      I1 => slv_reg1(29),
      I2 => axi_araddr(2),
      I3 => slv_reg2(29),
      I4 => axi_araddr(3),
      I5 => slv_reg0(29),
      O => \axi_rdata[29]_i_2_n_0\
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[2]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(2),
      O => \axi_rdata[2]_i_1_n_0\
    );
\axi_rdata[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(2),
      I1 => slv_reg1(2),
      I2 => axi_araddr(2),
      I3 => slv_reg2(2),
      I4 => axi_araddr(3),
      I5 => slv_reg0(2),
      O => \axi_rdata[2]_i_2_n_0\
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[30]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(30),
      O => \axi_rdata[30]_i_1_n_0\
    );
\axi_rdata[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(30),
      I1 => slv_reg1(30),
      I2 => axi_araddr(2),
      I3 => slv_reg2(30),
      I4 => axi_araddr(3),
      I5 => slv_reg0(30),
      O => \axi_rdata[30]_i_2_n_0\
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[31]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(31),
      O => \axi_rdata[31]_i_1_n_0\
    );
\axi_rdata[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(31),
      I1 => slv_reg1(31),
      I2 => axi_araddr(2),
      I3 => slv_reg2(31),
      I4 => axi_araddr(3),
      I5 => slv_reg0(31),
      O => \axi_rdata[31]_i_2_n_0\
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[3]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(3),
      O => \axi_rdata[3]_i_1_n_0\
    );
\axi_rdata[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(3),
      I1 => slv_reg1(3),
      I2 => axi_araddr(2),
      I3 => slv_reg2(3),
      I4 => axi_araddr(3),
      I5 => slv_reg0(3),
      O => \axi_rdata[3]_i_2_n_0\
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[4]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(4),
      O => \axi_rdata[4]_i_1_n_0\
    );
\axi_rdata[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(4),
      I1 => slv_reg1(4),
      I2 => axi_araddr(2),
      I3 => slv_reg2(4),
      I4 => axi_araddr(3),
      I5 => slv_reg0(4),
      O => \axi_rdata[4]_i_2_n_0\
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[5]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(5),
      O => \axi_rdata[5]_i_1_n_0\
    );
\axi_rdata[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(5),
      I1 => slv_reg1(5),
      I2 => axi_araddr(2),
      I3 => slv_reg2(5),
      I4 => axi_araddr(3),
      I5 => slv_reg0(5),
      O => \axi_rdata[5]_i_2_n_0\
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[6]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(6),
      O => \axi_rdata[6]_i_1_n_0\
    );
\axi_rdata[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(6),
      I1 => slv_reg1(6),
      I2 => axi_araddr(2),
      I3 => slv_reg2(6),
      I4 => axi_araddr(3),
      I5 => slv_reg0(6),
      O => \axi_rdata[6]_i_2_n_0\
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[7]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(7),
      O => \axi_rdata[7]_i_1_n_0\
    );
\axi_rdata[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(7),
      I1 => slv_reg1(7),
      I2 => axi_araddr(2),
      I3 => slv_reg2(7),
      I4 => axi_araddr(3),
      I5 => slv_reg0(7),
      O => \axi_rdata[7]_i_2_n_0\
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[8]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(8),
      O => \axi_rdata[8]_i_1_n_0\
    );
\axi_rdata[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(8),
      I1 => slv_reg1(8),
      I2 => axi_araddr(2),
      I3 => slv_reg2(8),
      I4 => axi_araddr(3),
      I5 => slv_reg0(8),
      O => \axi_rdata[8]_i_2_n_0\
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF4000"
    )
        port map (
      I0 => \^s00_axi_rvalid\,
      I1 => \axi_rdata[9]_i_2_n_0\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      I4 => \^s00_axi_rdata\(9),
      O => \axi_rdata[9]_i_1_n_0\
    );
\axi_rdata[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => slv_reg3(9),
      I1 => slv_reg1(9),
      I2 => axi_araddr(2),
      I3 => slv_reg2(9),
      I4 => axi_araddr(3),
      I5 => slv_reg0(9),
      O => \axi_rdata[9]_i_2_n_0\
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[0]_i_1_n_0\,
      Q => \^s00_axi_rdata\(0),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[10]_i_1_n_0\,
      Q => \^s00_axi_rdata\(10),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[11]_i_1_n_0\,
      Q => \^s00_axi_rdata\(11),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[12]_i_1_n_0\,
      Q => \^s00_axi_rdata\(12),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[13]_i_1_n_0\,
      Q => \^s00_axi_rdata\(13),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[14]_i_1_n_0\,
      Q => \^s00_axi_rdata\(14),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[15]_i_1_n_0\,
      Q => \^s00_axi_rdata\(15),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[16]_i_1_n_0\,
      Q => \^s00_axi_rdata\(16),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[17]_i_1_n_0\,
      Q => \^s00_axi_rdata\(17),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[18]_i_1_n_0\,
      Q => \^s00_axi_rdata\(18),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[19]_i_1_n_0\,
      Q => \^s00_axi_rdata\(19),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[1]_i_1_n_0\,
      Q => \^s00_axi_rdata\(1),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[20]_i_1_n_0\,
      Q => \^s00_axi_rdata\(20),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[21]_i_1_n_0\,
      Q => \^s00_axi_rdata\(21),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[22]_i_1_n_0\,
      Q => \^s00_axi_rdata\(22),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[23]_i_1_n_0\,
      Q => \^s00_axi_rdata\(23),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[24]_i_1_n_0\,
      Q => \^s00_axi_rdata\(24),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[25]_i_1_n_0\,
      Q => \^s00_axi_rdata\(25),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[26]_i_1_n_0\,
      Q => \^s00_axi_rdata\(26),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[27]_i_1_n_0\,
      Q => \^s00_axi_rdata\(27),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[28]_i_1_n_0\,
      Q => \^s00_axi_rdata\(28),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[29]_i_1_n_0\,
      Q => \^s00_axi_rdata\(29),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[2]_i_1_n_0\,
      Q => \^s00_axi_rdata\(2),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[30]_i_1_n_0\,
      Q => \^s00_axi_rdata\(30),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[31]_i_1_n_0\,
      Q => \^s00_axi_rdata\(31),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[3]_i_1_n_0\,
      Q => \^s00_axi_rdata\(3),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[4]_i_1_n_0\,
      Q => \^s00_axi_rdata\(4),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[5]_i_1_n_0\,
      Q => \^s00_axi_rdata\(5),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[6]_i_1_n_0\,
      Q => \^s00_axi_rdata\(6),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[7]_i_1_n_0\,
      Q => \^s00_axi_rdata\(7),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[8]_i_1_n_0\,
      Q => \^s00_axi_rdata\(8),
      R => axi_awready_i_1_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \axi_rdata[9]_i_1_n_0\,
      Q => \^s00_axi_rdata\(9),
      R => axi_awready_i_1_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7444"
    )
        port map (
      I0 => s00_axi_rready,
      I1 => \^s00_axi_rvalid\,
      I2 => \^s_axi_arready\,
      I3 => s00_axi_arvalid,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s00_axi_rvalid\,
      R => axi_awready_i_1_n_0
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => s00_axi_wvalid,
      I2 => s00_axi_awvalid,
      I3 => aw_en_reg_n_0,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s_axi_wready\,
      R => axi_awready_i_1_n_0
    );
\counterPeriod1[0]_i_10\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(31),
      O => \counterPeriod1[0]_i_10_n_0\
    );
\counterPeriod1[0]_i_11\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(30),
      O => \counterPeriod1[0]_i_11_n_0\
    );
\counterPeriod1[0]_i_12\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(29),
      O => \counterPeriod1[0]_i_12_n_0\
    );
\counterPeriod1[0]_i_13\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(28),
      O => \counterPeriod1[0]_i_13_n_0\
    );
\counterPeriod1[0]_i_15\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(27),
      O => \counterPeriod1[0]_i_15_n_0\
    );
\counterPeriod1[0]_i_16\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(26),
      O => \counterPeriod1[0]_i_16_n_0\
    );
\counterPeriod1[0]_i_17\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(25),
      O => \counterPeriod1[0]_i_17_n_0\
    );
\counterPeriod1[0]_i_18\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(24),
      O => \counterPeriod1[0]_i_18_n_0\
    );
\counterPeriod1[0]_i_20\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(23),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_20_n_0\
    );
\counterPeriod1[0]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(22),
      O => \counterPeriod1[0]_i_21_n_0\
    );
\counterPeriod1[0]_i_22\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => counterPeriod1_reg(20),
      I1 => counterPeriod1_reg(21),
      O => \counterPeriod1[0]_i_22_n_0\
    );
\counterPeriod1[0]_i_23\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counterPeriod1_reg(19),
      I1 => counterPeriod1_reg(20),
      O => \counterPeriod1[0]_i_23_n_0\
    );
\counterPeriod1[0]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(18),
      O => \counterPeriod1[0]_i_25_n_0\
    );
\counterPeriod1[0]_i_26\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      O => \counterPeriod1[0]_i_26_n_0\
    );
\counterPeriod1[0]_i_27\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => counterPeriod1_reg(18),
      I1 => counterPeriod1_reg(19),
      O => \counterPeriod1[0]_i_27_n_0\
    );
\counterPeriod1[0]_i_28\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D2"
    )
        port map (
      I0 => slv_reg0(0),
      I1 => slv_reg0(1),
      I2 => counterPeriod1_reg(18),
      O => \counterPeriod1[0]_i_28_n_0\
    );
\counterPeriod1[0]_i_29\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B4"
    )
        port map (
      I0 => slv_reg0(1),
      I1 => slv_reg0(0),
      I2 => counterPeriod1_reg(17),
      O => \counterPeriod1[0]_i_29_n_0\
    );
\counterPeriod1[0]_i_30\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(16),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_30_n_0\
    );
\counterPeriod1[0]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(15),
      O => \counterPeriod1[0]_i_32_n_0\
    );
\counterPeriod1[0]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(14),
      O => \counterPeriod1[0]_i_33_n_0\
    );
\counterPeriod1[0]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(13),
      O => \counterPeriod1[0]_i_34_n_0\
    );
\counterPeriod1[0]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(12),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_35_n_0\
    );
\counterPeriod1[0]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(11),
      O => \counterPeriod1[0]_i_37_n_0\
    );
\counterPeriod1[0]_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(10),
      O => \counterPeriod1[0]_i_38_n_0\
    );
\counterPeriod1[0]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(9),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_39_n_0\
    );
\counterPeriod1[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(32),
      O => \counterPeriod1[0]_i_4_n_0\
    );
\counterPeriod1[0]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(8),
      O => \counterPeriod1[0]_i_40_n_0\
    );
\counterPeriod1[0]_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(7),
      O => \counterPeriod1[0]_i_42_n_0\
    );
\counterPeriod1[0]_i_43\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(6),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_43_n_0\
    );
\counterPeriod1[0]_i_44\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => counterPeriod1_reg(5),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_44_n_0\
    );
\counterPeriod1[0]_i_45\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => counterPeriod1_reg(4),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_45_n_0\
    );
\counterPeriod1[0]_i_46\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(3),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_46_n_0\
    );
\counterPeriod1[0]_i_47\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => counterPeriod1_reg(2),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_47_n_0\
    );
\counterPeriod1[0]_i_48\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"9A"
    )
        port map (
      I0 => counterPeriod1_reg(1),
      I1 => slv_reg0(1),
      I2 => slv_reg0(0),
      O => \counterPeriod1[0]_i_48_n_0\
    );
\counterPeriod1[0]_i_49\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"59"
    )
        port map (
      I0 => counterPeriod1_reg(0),
      I1 => slv_reg0(0),
      I2 => slv_reg0(1),
      O => \counterPeriod1[0]_i_49_n_0\
    );
\counterPeriod1[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(3),
      O => \counterPeriod1[0]_i_5_n_0\
    );
\counterPeriod1[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(2),
      O => \counterPeriod1[0]_i_6_n_0\
    );
\counterPeriod1[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(1),
      O => \counterPeriod1[0]_i_7_n_0\
    );
\counterPeriod1[0]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counterPeriod1_reg(0),
      O => \counterPeriod1[0]_i_8_n_0\
    );
\counterPeriod1[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(15),
      O => \counterPeriod1[12]_i_2_n_0\
    );
\counterPeriod1[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(14),
      O => \counterPeriod1[12]_i_3_n_0\
    );
\counterPeriod1[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(13),
      O => \counterPeriod1[12]_i_4_n_0\
    );
\counterPeriod1[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(12),
      O => \counterPeriod1[12]_i_5_n_0\
    );
\counterPeriod1[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(19),
      O => \counterPeriod1[16]_i_2_n_0\
    );
\counterPeriod1[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(18),
      O => \counterPeriod1[16]_i_3_n_0\
    );
\counterPeriod1[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(17),
      O => \counterPeriod1[16]_i_4_n_0\
    );
\counterPeriod1[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(16),
      O => \counterPeriod1[16]_i_5_n_0\
    );
\counterPeriod1[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(23),
      O => \counterPeriod1[20]_i_2_n_0\
    );
\counterPeriod1[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(22),
      O => \counterPeriod1[20]_i_3_n_0\
    );
\counterPeriod1[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(21),
      O => \counterPeriod1[20]_i_4_n_0\
    );
\counterPeriod1[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(20),
      O => \counterPeriod1[20]_i_5_n_0\
    );
\counterPeriod1[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(27),
      O => \counterPeriod1[24]_i_2_n_0\
    );
\counterPeriod1[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(26),
      O => \counterPeriod1[24]_i_3_n_0\
    );
\counterPeriod1[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(25),
      O => \counterPeriod1[24]_i_4_n_0\
    );
\counterPeriod1[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(24),
      O => \counterPeriod1[24]_i_5_n_0\
    );
\counterPeriod1[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(31),
      O => \counterPeriod1[28]_i_2_n_0\
    );
\counterPeriod1[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(30),
      O => \counterPeriod1[28]_i_3_n_0\
    );
\counterPeriod1[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(29),
      O => \counterPeriod1[28]_i_4_n_0\
    );
\counterPeriod1[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(28),
      O => \counterPeriod1[28]_i_5_n_0\
    );
\counterPeriod1[32]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(32),
      O => \counterPeriod1[32]_i_2_n_0\
    );
\counterPeriod1[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(7),
      O => \counterPeriod1[4]_i_2_n_0\
    );
\counterPeriod1[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(6),
      O => \counterPeriod1[4]_i_3_n_0\
    );
\counterPeriod1[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(5),
      O => \counterPeriod1[4]_i_4_n_0\
    );
\counterPeriod1[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(4),
      O => \counterPeriod1[4]_i_5_n_0\
    );
\counterPeriod1[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(11),
      O => \counterPeriod1[8]_i_2_n_0\
    );
\counterPeriod1[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(10),
      O => \counterPeriod1[8]_i_3_n_0\
    );
\counterPeriod1[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(9),
      O => \counterPeriod1[8]_i_4_n_0\
    );
\counterPeriod1[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => counterPeriod1_reg(8),
      O => \counterPeriod1[8]_i_5_n_0\
    );
\counterPeriod1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[0]_i_2_n_7\,
      Q => counterPeriod1_reg(0),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_3_n_0\,
      CO(3 downto 1) => \NLW_counterPeriod1_reg[0]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \counterPeriod1_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => counterPeriod1_reg(32),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 1) => B"000",
      S(0) => \counterPeriod1[0]_i_4_n_0\
    );
\counterPeriod1_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_19_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_14_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_14_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_14_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => counterPeriod1_reg(23 downto 22),
      DI(1 downto 0) => counterPeriod1_reg(20 downto 19),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_20_n_0\,
      S(2) => \counterPeriod1[0]_i_21_n_0\,
      S(1) => \counterPeriod1[0]_i_22_n_0\,
      S(0) => \counterPeriod1[0]_i_23_n_0\
    );
\counterPeriod1_reg[0]_i_19\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_24_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_19_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_19_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_19_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_19_n_3\,
      CYINIT => '0',
      DI(3) => counterPeriod1_reg(18),
      DI(2) => \counterPeriod1[0]_i_25_n_0\,
      DI(1) => \counterPeriod1[0]_i_26_n_0\,
      DI(0) => counterPeriod1_reg(16),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_19_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_27_n_0\,
      S(2) => \counterPeriod1[0]_i_28_n_0\,
      S(1) => \counterPeriod1[0]_i_29_n_0\,
      S(0) => \counterPeriod1[0]_i_30_n_0\
    );
\counterPeriod1_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counterPeriod1_reg[0]_i_2_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_2_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_2_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \counterPeriod1_reg[0]_i_2_n_4\,
      O(2) => \counterPeriod1_reg[0]_i_2_n_5\,
      O(1) => \counterPeriod1_reg[0]_i_2_n_6\,
      O(0) => \counterPeriod1_reg[0]_i_2_n_7\,
      S(3) => \counterPeriod1[0]_i_5_n_0\,
      S(2) => \counterPeriod1[0]_i_6_n_0\,
      S(1) => \counterPeriod1[0]_i_7_n_0\,
      S(0) => \counterPeriod1[0]_i_8_n_0\
    );
\counterPeriod1_reg[0]_i_24\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_31_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_24_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_24_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_24_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_24_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => counterPeriod1_reg(14 downto 12),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_24_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_32_n_0\,
      S(2) => \counterPeriod1[0]_i_33_n_0\,
      S(1) => \counterPeriod1[0]_i_34_n_0\,
      S(0) => \counterPeriod1[0]_i_35_n_0\
    );
\counterPeriod1_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_9_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_3_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_3_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_3_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counterPeriod1_reg(31 downto 28),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_10_n_0\,
      S(2) => \counterPeriod1[0]_i_11_n_0\,
      S(1) => \counterPeriod1[0]_i_12_n_0\,
      S(0) => \counterPeriod1[0]_i_13_n_0\
    );
\counterPeriod1_reg[0]_i_31\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_36_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_31_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_31_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_31_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_31_n_3\,
      CYINIT => '0',
      DI(3) => counterPeriod1_reg(11),
      DI(2) => '0',
      DI(1 downto 0) => counterPeriod1_reg(9 downto 8),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_31_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_37_n_0\,
      S(2) => \counterPeriod1[0]_i_38_n_0\,
      S(1) => \counterPeriod1[0]_i_39_n_0\,
      S(0) => \counterPeriod1[0]_i_40_n_0\
    );
\counterPeriod1_reg[0]_i_36\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_41_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_36_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_36_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_36_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_36_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2 downto 0) => counterPeriod1_reg(6 downto 4),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_36_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_42_n_0\,
      S(2) => \counterPeriod1[0]_i_43_n_0\,
      S(1) => \counterPeriod1[0]_i_44_n_0\,
      S(0) => \counterPeriod1[0]_i_45_n_0\
    );
\counterPeriod1_reg[0]_i_41\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counterPeriod1_reg[0]_i_41_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_41_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_41_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_41_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => counterPeriod1_reg(3 downto 0),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_41_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_46_n_0\,
      S(2) => \counterPeriod1[0]_i_47_n_0\,
      S(1) => \counterPeriod1[0]_i_48_n_0\,
      S(0) => \counterPeriod1[0]_i_49_n_0\
    );
\counterPeriod1_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_14_n_0\,
      CO(3) => \counterPeriod1_reg[0]_i_9_n_0\,
      CO(2) => \counterPeriod1_reg[0]_i_9_n_1\,
      CO(1) => \counterPeriod1_reg[0]_i_9_n_2\,
      CO(0) => \counterPeriod1_reg[0]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => counterPeriod1_reg(27 downto 24),
      O(3 downto 0) => \NLW_counterPeriod1_reg[0]_i_9_O_UNCONNECTED\(3 downto 0),
      S(3) => \counterPeriod1[0]_i_15_n_0\,
      S(2) => \counterPeriod1[0]_i_16_n_0\,
      S(1) => \counterPeriod1[0]_i_17_n_0\,
      S(0) => \counterPeriod1[0]_i_18_n_0\
    );
\counterPeriod1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[8]_i_1_n_5\,
      Q => counterPeriod1_reg(10),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[8]_i_1_n_4\,
      Q => counterPeriod1_reg(11),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[12]_i_1_n_7\,
      Q => counterPeriod1_reg(12),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[8]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[12]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[12]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[12]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[12]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[12]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[12]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[12]_i_1_n_7\,
      S(3) => \counterPeriod1[12]_i_2_n_0\,
      S(2) => \counterPeriod1[12]_i_3_n_0\,
      S(1) => \counterPeriod1[12]_i_4_n_0\,
      S(0) => \counterPeriod1[12]_i_5_n_0\
    );
\counterPeriod1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[12]_i_1_n_6\,
      Q => counterPeriod1_reg(13),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[12]_i_1_n_5\,
      Q => counterPeriod1_reg(14),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[12]_i_1_n_4\,
      Q => counterPeriod1_reg(15),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[16]_i_1_n_7\,
      Q => counterPeriod1_reg(16),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[12]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[16]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[16]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[16]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[16]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[16]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[16]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[16]_i_1_n_7\,
      S(3) => \counterPeriod1[16]_i_2_n_0\,
      S(2) => \counterPeriod1[16]_i_3_n_0\,
      S(1) => \counterPeriod1[16]_i_4_n_0\,
      S(0) => \counterPeriod1[16]_i_5_n_0\
    );
\counterPeriod1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[16]_i_1_n_6\,
      Q => counterPeriod1_reg(17),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[16]_i_1_n_5\,
      Q => counterPeriod1_reg(18),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[16]_i_1_n_4\,
      Q => counterPeriod1_reg(19),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[0]_i_2_n_6\,
      Q => counterPeriod1_reg(1),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[20]_i_1_n_7\,
      Q => counterPeriod1_reg(20),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[16]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[20]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[20]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[20]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[20]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[20]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[20]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[20]_i_1_n_7\,
      S(3) => \counterPeriod1[20]_i_2_n_0\,
      S(2) => \counterPeriod1[20]_i_3_n_0\,
      S(1) => \counterPeriod1[20]_i_4_n_0\,
      S(0) => \counterPeriod1[20]_i_5_n_0\
    );
\counterPeriod1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[20]_i_1_n_6\,
      Q => counterPeriod1_reg(21),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[20]_i_1_n_5\,
      Q => counterPeriod1_reg(22),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[20]_i_1_n_4\,
      Q => counterPeriod1_reg(23),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[24]_i_1_n_7\,
      Q => counterPeriod1_reg(24),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[20]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[24]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[24]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[24]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[24]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[24]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[24]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[24]_i_1_n_7\,
      S(3) => \counterPeriod1[24]_i_2_n_0\,
      S(2) => \counterPeriod1[24]_i_3_n_0\,
      S(1) => \counterPeriod1[24]_i_4_n_0\,
      S(0) => \counterPeriod1[24]_i_5_n_0\
    );
\counterPeriod1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[24]_i_1_n_6\,
      Q => counterPeriod1_reg(25),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[24]_i_1_n_5\,
      Q => counterPeriod1_reg(26),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[24]_i_1_n_4\,
      Q => counterPeriod1_reg(27),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[28]_i_1_n_7\,
      Q => counterPeriod1_reg(28),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[24]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[28]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[28]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[28]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[28]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[28]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[28]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[28]_i_1_n_7\,
      S(3) => \counterPeriod1[28]_i_2_n_0\,
      S(2) => \counterPeriod1[28]_i_3_n_0\,
      S(1) => \counterPeriod1[28]_i_4_n_0\,
      S(0) => \counterPeriod1[28]_i_5_n_0\
    );
\counterPeriod1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[28]_i_1_n_6\,
      Q => counterPeriod1_reg(29),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[0]_i_2_n_5\,
      Q => counterPeriod1_reg(2),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[28]_i_1_n_5\,
      Q => counterPeriod1_reg(30),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[28]_i_1_n_4\,
      Q => counterPeriod1_reg(31),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[32]_i_1_n_7\,
      Q => counterPeriod1_reg(32),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[32]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[28]_i_1_n_0\,
      CO(3 downto 0) => \NLW_counterPeriod1_reg[32]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => \NLW_counterPeriod1_reg[32]_i_1_O_UNCONNECTED\(3 downto 1),
      O(0) => \counterPeriod1_reg[32]_i_1_n_7\,
      S(3 downto 1) => B"000",
      S(0) => \counterPeriod1[32]_i_2_n_0\
    );
\counterPeriod1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[0]_i_2_n_4\,
      Q => counterPeriod1_reg(3),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[4]_i_1_n_7\,
      Q => counterPeriod1_reg(4),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[0]_i_2_n_0\,
      CO(3) => \counterPeriod1_reg[4]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[4]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[4]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[4]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[4]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[4]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[4]_i_1_n_7\,
      S(3) => \counterPeriod1[4]_i_2_n_0\,
      S(2) => \counterPeriod1[4]_i_3_n_0\,
      S(1) => \counterPeriod1[4]_i_4_n_0\,
      S(0) => \counterPeriod1[4]_i_5_n_0\
    );
\counterPeriod1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[4]_i_1_n_6\,
      Q => counterPeriod1_reg(5),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[4]_i_1_n_5\,
      Q => counterPeriod1_reg(6),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[4]_i_1_n_4\,
      Q => counterPeriod1_reg(7),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[8]_i_1_n_7\,
      Q => counterPeriod1_reg(8),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\counterPeriod1_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counterPeriod1_reg[4]_i_1_n_0\,
      CO(3) => \counterPeriod1_reg[8]_i_1_n_0\,
      CO(2) => \counterPeriod1_reg[8]_i_1_n_1\,
      CO(1) => \counterPeriod1_reg[8]_i_1_n_2\,
      CO(0) => \counterPeriod1_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counterPeriod1_reg[8]_i_1_n_4\,
      O(2) => \counterPeriod1_reg[8]_i_1_n_5\,
      O(1) => \counterPeriod1_reg[8]_i_1_n_6\,
      O(0) => \counterPeriod1_reg[8]_i_1_n_7\,
      S(3) => \counterPeriod1[8]_i_2_n_0\,
      S(2) => \counterPeriod1[8]_i_3_n_0\,
      S(1) => \counterPeriod1[8]_i_4_n_0\,
      S(0) => \counterPeriod1[8]_i_5_n_0\
    );
\counterPeriod1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => '1',
      D => \counterPeriod1_reg[8]_i_1_n_6\,
      Q => counterPeriod1_reg(9),
      R => \counterPeriod1_reg[0]_i_1_n_3\
    );
\slv_reg0[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(1),
      O => p_1_in(15)
    );
\slv_reg0[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(2),
      O => p_1_in(23)
    );
\slv_reg0[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(3),
      O => p_1_in(31)
    );
\slv_reg0[31]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_awready\,
      I2 => s00_axi_awvalid,
      I3 => s00_axi_wvalid,
      O => \slv_reg_wren__0\
    );
\slv_reg0[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => p_0_in(0),
      I3 => s00_axi_wstrb(0),
      O => p_1_in(0)
    );
\slv_reg0_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(0),
      Q => slv_reg0(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(10),
      Q => slv_reg0(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(11),
      Q => slv_reg0(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(12),
      Q => slv_reg0(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(13),
      Q => slv_reg0(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(14),
      Q => slv_reg0(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(15),
      Q => slv_reg0(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(16),
      Q => slv_reg0(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(17),
      Q => slv_reg0(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(18),
      Q => slv_reg0(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(19),
      Q => slv_reg0(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(1),
      Q => slv_reg0(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(20),
      Q => slv_reg0(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(21),
      Q => slv_reg0(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(22),
      Q => slv_reg0(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(23),
      D => s00_axi_wdata(23),
      Q => slv_reg0(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(24),
      Q => slv_reg0(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(25),
      Q => slv_reg0(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(26),
      Q => slv_reg0(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(27),
      Q => slv_reg0(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(28),
      Q => slv_reg0(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(29),
      Q => slv_reg0(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(2),
      Q => slv_reg0(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(30),
      Q => slv_reg0(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(31),
      D => s00_axi_wdata(31),
      Q => slv_reg0(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(3),
      Q => slv_reg0(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(4),
      Q => slv_reg0(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(5),
      Q => slv_reg0(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(6),
      Q => slv_reg0(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(0),
      D => s00_axi_wdata(7),
      Q => slv_reg0(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(8),
      Q => slv_reg0(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg0_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => p_1_in(15),
      D => s00_axi_wdata(9),
      Q => slv_reg0(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg1[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg1[15]_i_1_n_0\
    );
\slv_reg1[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg1[23]_i_1_n_0\
    );
\slv_reg1[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg1[31]_i_1_n_0\
    );
\slv_reg1[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg1[7]_i_1_n_0\
    );
\slv_reg1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg1(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg1(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg1(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg1(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg1(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg1(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg1(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg1(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg1(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg1(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg1(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg1(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg1(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg1(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg1(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg1(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg1(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg1(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg1(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg1(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg1(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg1(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg1(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg1(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg1(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg1(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg1(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg1(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg1(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg1(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg1(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg1[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg1(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg2[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(1),
      I3 => p_0_in(0),
      O => \slv_reg2[15]_i_1_n_0\
    );
\slv_reg2[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(2),
      I3 => p_0_in(0),
      O => \slv_reg2[23]_i_1_n_0\
    );
\slv_reg2[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(3),
      I3 => p_0_in(0),
      O => \slv_reg2[31]_i_1_n_0\
    );
\slv_reg2[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => p_0_in(1),
      I2 => s00_axi_wstrb(0),
      I3 => p_0_in(0),
      O => \slv_reg2[7]_i_1_n_0\
    );
\slv_reg2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg2(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg2(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg2(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg2(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg2(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg2(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg2(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg2(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg2(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg2(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg2(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg2(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg2(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg2(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg2(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg2(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg2(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg2(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg2(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg2(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg2(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg2(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg2(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg2(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg2(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg2(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg2(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg2(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg2(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg2(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg2(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg2[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg2(9),
      R => axi_awready_i_1_n_0
    );
\slv_reg3[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(1),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[15]_i_1_n_0\
    );
\slv_reg3[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(2),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[23]_i_1_n_0\
    );
\slv_reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(3),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[31]_i_1_n_0\
    );
\slv_reg3[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \slv_reg_wren__0\,
      I1 => s00_axi_wstrb(0),
      I2 => p_0_in(0),
      I3 => p_0_in(1),
      O => \slv_reg3[7]_i_1_n_0\
    );
\slv_reg3_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(0),
      Q => slv_reg3(0),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(10),
      Q => slv_reg3(10),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(11),
      Q => slv_reg3(11),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(12),
      Q => slv_reg3(12),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(13),
      Q => slv_reg3(13),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(14),
      Q => slv_reg3(14),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(15),
      Q => slv_reg3(15),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(16),
      Q => slv_reg3(16),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(17),
      Q => slv_reg3(17),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(18),
      Q => slv_reg3(18),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(19),
      Q => slv_reg3(19),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(1),
      Q => slv_reg3(1),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(20),
      Q => slv_reg3(20),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(21),
      Q => slv_reg3(21),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(22),
      Q => slv_reg3(22),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[23]_i_1_n_0\,
      D => s00_axi_wdata(23),
      Q => slv_reg3(23),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(24),
      Q => slv_reg3(24),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(25),
      Q => slv_reg3(25),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(26),
      Q => slv_reg3(26),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(27),
      Q => slv_reg3(27),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(28),
      Q => slv_reg3(28),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(29),
      Q => slv_reg3(29),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(2),
      Q => slv_reg3(2),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(30),
      Q => slv_reg3(30),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[31]_i_1_n_0\,
      D => s00_axi_wdata(31),
      Q => slv_reg3(31),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(3),
      Q => slv_reg3(3),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(4),
      Q => slv_reg3(4),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(5),
      Q => slv_reg3(5),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(6),
      Q => slv_reg3(6),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[7]_i_1_n_0\,
      D => s00_axi_wdata(7),
      Q => slv_reg3(7),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(8),
      Q => slv_reg3(8),
      R => axi_awready_i_1_n_0
    );
\slv_reg3_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s00_axi_aclk,
      CE => \slv_reg3[15]_i_1_n_0\,
      D => s00_axi_wdata(9),
      Q => slv_reg3(9),
      R => axi_awready_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_WREADY : out STD_LOGIC;
    s00_axi_rvalid : out STD_LOGIC;
    servoPWM1 : out STD_LOGIC;
    servoPWM2 : out STD_LOGIC;
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_aresetn : in STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_rready : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0 is
begin
srervo_ip_v1_0_S00_AXI_inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0_S00_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      S_AXI_WREADY => S_AXI_WREADY,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(1 downto 0),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(1 downto 0),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      servoPWM1 => servoPWM1,
      servoPWM2 => servoPWM2
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    servoPWM1 : out STD_LOGIC;
    servoPWM2 : out STD_LOGIC;
    s00_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_awvalid : in STD_LOGIC;
    s00_axi_awready : out STD_LOGIC;
    s00_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_wvalid : in STD_LOGIC;
    s00_axi_wready : out STD_LOGIC;
    s00_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_bvalid : out STD_LOGIC;
    s00_axi_bready : in STD_LOGIC;
    s00_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s00_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s00_axi_arvalid : in STD_LOGIC;
    s00_axi_arready : out STD_LOGIC;
    s00_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s00_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s00_axi_rvalid : out STD_LOGIC;
    s00_axi_rready : in STD_LOGIC;
    s00_axi_aclk : in STD_LOGIC;
    s00_axi_aresetn : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_servo_ip_0_1,srervo_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "srervo_ip_v1_0,Vivado 2017.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \<const0>\ : STD_LOGIC;
begin
  s00_axi_bresp(1) <= \<const0>\;
  s00_axi_bresp(0) <= \<const0>\;
  s00_axi_rresp(1) <= \<const0>\;
  s00_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_srervo_ip_v1_0
     port map (
      S_AXI_ARREADY => s00_axi_arready,
      S_AXI_AWREADY => s00_axi_awready,
      S_AXI_WREADY => s00_axi_wready,
      s00_axi_aclk => s00_axi_aclk,
      s00_axi_araddr(1 downto 0) => s00_axi_araddr(3 downto 2),
      s00_axi_aresetn => s00_axi_aresetn,
      s00_axi_arvalid => s00_axi_arvalid,
      s00_axi_awaddr(1 downto 0) => s00_axi_awaddr(3 downto 2),
      s00_axi_awvalid => s00_axi_awvalid,
      s00_axi_bready => s00_axi_bready,
      s00_axi_bvalid => s00_axi_bvalid,
      s00_axi_rdata(31 downto 0) => s00_axi_rdata(31 downto 0),
      s00_axi_rready => s00_axi_rready,
      s00_axi_rvalid => s00_axi_rvalid,
      s00_axi_wdata(31 downto 0) => s00_axi_wdata(31 downto 0),
      s00_axi_wstrb(3 downto 0) => s00_axi_wstrb(3 downto 0),
      s00_axi_wvalid => s00_axi_wvalid,
      servoPWM1 => servoPWM1,
      servoPWM2 => servoPWM2
    );
end STRUCTURE;
