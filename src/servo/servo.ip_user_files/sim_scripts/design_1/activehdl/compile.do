vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../servo.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../servo.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2017.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../servo.srcs/sources_1/bd/design_1/ipshared/9c7f" "+incdir+../../../../servo.srcs/sources_1/bd/design_1/ipshared/9c7f" \
"../../../bd/design_1/hdl/design_1.v" \
"../../../bd/design_1/ip/design_1_microblaze_0_1/design_1_microblaze_0_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_mdm_1_1/design_1_mdm_1_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_1/design_1_clk_wiz_1_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_rst_clk_wiz_1_100M_1/design_1_rst_clk_wiz_1_100M_1_sim_netlist.v" \
"../../../bd/design_1/ipshared/812e/hdl/srervo_ip_v1_0_S00_AXI.v" \
"../../../bd/design_1/ipshared/812e/hdl/srervo_ip_v1_0.v" \
"../../../bd/design_1/ip/design_1_servo_ip_0_1/sim/design_1_servo_ip_0_1.v" \
"../../../bd/design_1/ip/design_1_dlmb_v10_1/design_1_dlmb_v10_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_ilmb_v10_1/design_1_ilmb_v10_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_dlmb_bram_if_cntlr_1/design_1_dlmb_bram_if_cntlr_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_ilmb_bram_if_cntlr_1/design_1_ilmb_bram_if_cntlr_1_sim_netlist.v" \
"../../../bd/design_1/ip/design_1_lmb_bram_1/design_1_lmb_bram_1_sim_netlist.v" \

vlog -work xil_defaultlib \
"glbl.v"

