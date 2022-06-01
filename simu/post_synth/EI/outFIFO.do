onerror {resume}
quietly virtual signal -install /tb_FIFO2/u_fifo { (context /tb_FIFO2/u_fifo )&{\FIFO[0][3] , \FIFO[0][2] , \FIFO[0][1] , \FIFO[0][0] }} FIFO_0
quietly virtual signal -install /tb_FIFO2/u_fifo { (context /tb_FIFO2/u_fifo )&{\FIFO[1][3] , \FIFO[1][2] , \FIFO[1][1] , \FIFO[1][0] }} FIFO_1
quietly WaveActivateNextPane {} 0
add wave -noupdate -label inClock /tb_FIFO2/clk
add wave -noupdate -label inReset /tb_FIFO2/reset
add wave -noupdate -label inWriteEnable /tb_FIFO2/writeEN
add wave -noupdate /tb_FIFO2/inData
add wave -noupdate -color Cyan /tb_FIFO2/u_fifo/FIFO_1
add wave -noupdate -color Cyan /tb_FIFO2/u_fifo/FIFO_0
add wave -noupdate -label inReadEnable /tb_FIFO2/readEN
add wave -noupdate /tb_FIFO2/u_fifo/outData
add wave -noupdate /tb_FIFO2/u_fifo/outDone
add wave -noupdate -color White /tb_FIFO2/u_fifo/outFull
add wave -noupdate -color White /tb_FIFO2/u_fifo/outAlmostFull
add wave -noupdate -color White /tb_FIFO2/u_fifo/outAlmostEmpty
add wave -noupdate -color White /tb_FIFO2/u_fifo/outEmpty
add wave -noupdate -color Blue /tb_FIFO2/u_fifo/outWriteCount
add wave -noupdate -color Blue /tb_FIFO2/u_fifo/outReadCount
add wave -noupdate -color Red /tb_FIFO2/u_fifo/outWriteError
add wave -noupdate -color Red /tb_FIFO2/u_fifo/outReadError
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2161000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {2281852 ps} {4827271 ps}
