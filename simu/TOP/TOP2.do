onerror {resume}
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
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inSEL2
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL3
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL6
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL9
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL11
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL12
add wave -noupdate /tb_TOP2/u_top/in_MUX_inSEL15
add wave -noupdate /tb_TOP2/u_top/in_DEMUX_inSEL17
add wave -noupdate -divider OUT
add wave -noupdate /tb_TOP2/u_top/out_MUX_outMUX9
add wave -noupdate /tb_TOP2/u_top/out_MUX_outMUX10
add wave -noupdate /tb_TOP2/u_top/out_MUX_outMUX15
add wave -noupdate /tb_TOP2/u_top/out_MUX_outMUX16
add wave -noupdate -divider inFIFO
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/inData
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/inWriteEnable
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/FIFO
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/inReadEnable
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/outData
add wave -noupdate /tb_TOP2/u_top/u_inFIFO/outEmpty
add wave -noupdate -divider CODER
add wave -noupdate /tb_TOP2/u_top/u_coder/i_empty
add wave -noupdate /tb_TOP2/u_top/u_coder/i_data
add wave -noupdate /tb_TOP2/u_top/u_coder/o_sinI
add wave -noupdate /tb_TOP2/u_top/u_coder/o_sinQ
add wave -noupdate /tb_TOP2/u_top/u_coder/o_sinI_four
add wave -noupdate /tb_TOP2/u_top/u_coder/o_sinQ_four
add wave -noupdate -divider DECODER
add wave -noupdate /tb_TOP2/u_top/u_decoder/i_adc_eoc
add wave -noupdate /tb_TOP2/u_top/u_decoder/i_I_if
add wave -noupdate /tb_TOP2/u_top/u_decoder/i_Q_if
add wave -noupdate /tb_TOP2/u_top/u_decoder/o_I_BB
add wave -noupdate /tb_TOP2/u_top/u_decoder/o_Q_BB
add wave -noupdate /tb_TOP2/u_top/u_decoder/o_postfilter_ready
add wave -noupdate -divider CORDIC
add wave -noupdate /tb_TOP2/u_top/u_cordic/i_enable_in
add wave -noupdate /tb_TOP2/u_top/u_cordic/i_I
add wave -noupdate /tb_TOP2/u_top/u_cordic/i_Q
add wave -noupdate /tb_TOP2/u_top/u_cordic/o_dir
add wave -noupdate /tb_TOP2/u_top/u_cordic/o_enable_out
add wave -noupdate -divider CDR
add wave -noupdate /tb_TOP2/u_top/u_cdr/i_flag
add wave -noupdate /tb_TOP2/u_top/u_cdr/i_phase
add wave -noupdate /tb_TOP2/u_top/u_cdr/o_data
add wave -noupdate /tb_TOP2/u_top/u_cdr/o_flag
add wave -noupdate -divider outFIFO
add wave -noupdate /tb_TOP2/u_top/u_outFIFO/inData
add wave -noupdate /tb_TOP2/u_top/u_outFIFO/inWriteEnable
add wave -noupdate /tb_TOP2/u_top/u_outFIFO/FIFO
add wave -noupdate /tb_TOP2/u_top/u_outFIFO/inReadEnable
add wave -noupdate /tb_TOP2/u_top/u_outFIFO/outData
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2286931818 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 192
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
WaveRestoreZoom {0 ps} {10500 us}
