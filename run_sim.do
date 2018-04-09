file mkdir out

vlib work

vlog src/tb.sv

vsim -gui work.tb
add wave -position insertpoint sim:/tb/corner_we
add wave -position insertpoint sim:/tb/y_coor
add wave -position insertpoint sim:/tb/x_coor
add wave -position end  sim:/tb/dut0/fast0/crc
add wave -position end  sim:/tb/dut0/fast0/ctr
add wave -position end  sim:/tb/dut0/fast0/scr
add wave -position end  sim:/tb/dut0/fast0/c0/con0/i_b
add wave -position end  sim:/tb/dut0/fast0/c0/con0/i_d
add wave -position end  sim:/tb/dut0/fast0/c0/con0/o_1
add wave -position end  sim:/tb/dut0/fast0/nms0/nms0/i_scr
add wave -position end  sim:/tb/dut0/fast0/nms0/nms0/i_is_corner
add wave -position end  sim:/tb/dut0/fast0/nms0/nms0/o_corner
add wave -position end  sim:/tb/dut0/fast0/nms0/nms0/i_a
add wave -position end  sim:/tb/dut0/fast0/nms0/nms0/highest
add wave -position end  \
sim:/tb/dut0/fast0/c0/thrs0/i_clk \
sim:/tb/dut0/fast0/c0/thrs0/i_crc \
sim:/tb/dut0/fast0/c0/thrs0/i_ctr \
sim:/tb/dut0/fast0/c0/thrs0/i_thr \
sim:/tb/dut0/fast0/c0/thrs0/o_scr \
sim:/tb/dut0/fast0/c0/thrs0/o_thr \
sim:/tb/dut0/fast0/c0/thrs0/bri_reg \
sim:/tb/dut0/fast0/c0/thrs0/dar_reg \
sim:/tb/dut0/fast0/c0/thrs0/thr_bri \
sim:/tb/dut0/fast0/c0/thrs0/thr_dar \
sim:/tb/dut0/fast0/c0/thrs0/bright \
sim:/tb/dut0/fast0/c0/thrs0/dark \
sim:/tb/dut0/fast0/c0/thrs0/bright_sel \
sim:/tb/dut0/fast0/c0/thrs0/dark_sel \
sim:/tb/dut0/fast0/c0/thrs0/bri_scr \
sim:/tb/dut0/fast0/c0/thrs0/dar_scr
add wave -position 14  sim:/tb/dut0/fast0/c0/i_scr_en
add wave -position 14  \
sim:/tb/dut0/fast0/i_a \
sim:/tb/dut0/fast0/cbuf0/o_a \
sim:/tb/donecount  \
sim:/tb/iter \
sim:/tb/vsync_out

run -all

exit
