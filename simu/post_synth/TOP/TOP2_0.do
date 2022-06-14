onerror {resume}
quietly virtual signal -install /tb_TOP2/u_top { (context /tb_TOP2/u_top )&{\u_inFIFO/FIFO[0][3] , \u_inFIFO/FIFO[0][2] , \u_inFIFO/FIFO[0][1] , \u_inFIFO/FIFO[0][0] }} FIFO_0
quietly virtual signal -install /tb_TOP2/u_top { (context /tb_TOP2/u_top )&{\u_outFIFO/FIFO[0][3] , \u_outFIFO/FIFO[0][2] , \u_outFIFO/FIFO[0][1] , \u_outFIFO/FIFO[0][0] }} outFIFO_0
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider GENERAL
add wave -noupdate /tb_TOP2/u_top/inClock
add wave -noupdate /tb_TOP2/u_top/inReset
add wave -noupdate -divider IN
add wave -noupdate /tb_TOP2/u_top/in_outFIFO_inReadEnable
add wave -noupdate /tb_TOP2/u_top/in_inFIFO_inData
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inDEMUX1
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inDEMUX2
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inDEMUX17
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inDEMUX18
add wave -noupdate -divider SEL
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inSEL1
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL6
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL9
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL11
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL12
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL15
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inSEL17
add wave -noupdate -divider OUT
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal /tb_TOP2/u_top/out_MUX_outMUX9
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal /tb_TOP2/u_top/out_MUX_outMUX10
add wave -noupdate -radix binary /tb_TOP2/u_top/out_MUX_outMUX15
add wave -noupdate -radix binary /tb_TOP2/u_top/out_MUX_outMUX16
add wave -noupdate -divider inFIFO
add wave -noupdate -label inFIFO_0 -expand /tb_TOP2/u_top/FIFO_0
add wave -noupdate -divider CODER
add wave -noupdate -divider DECODER
add wave -noupdate -divider CORDIC
add wave -noupdate -divider CDR
add wave -noupdate -divider outFIFO
add wave -noupdate /tb_TOP2/u_top/outFIFO_0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24992001 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 381
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {31500 ns}
