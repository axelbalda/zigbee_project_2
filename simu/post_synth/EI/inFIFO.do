onerror {resume}
quietly virtual signal -install /tb_FIFO/u_fifo { (context /tb_FIFO/u_fifo )&{\FIFO[0][7] , \FIFO[0][6] , \FIFO[0][5] , \FIFO[0][4] , \FIFO[0][3] , \FIFO[0][2] , \FIFO[0][1] , \FIFO[0][0] }} FIFO_0
quietly virtual signal -install /tb_FIFO/u_fifo { (context /tb_FIFO/u_fifo )&{\FIFO[1][7] , \FIFO[1][6] , \FIFO[1][5] , \FIFO[1][4] , \FIFO[1][3] , \FIFO[1][2] , \FIFO[1][1] , \FIFO[1][0] }} FIFO_1
quietly virtual signal -install /tb_FIFO/u_fifo { (context /tb_FIFO/u_fifo )&{\FIFO[2][7] , \FIFO[2][6] , \FIFO[2][5] , \FIFO[2][4] , \FIFO[2][3] , \FIFO[2][2] , \FIFO[2][1] , \FIFO[2][0] }} FIFO_2
quietly virtual signal -install /tb_FIFO/u_fifo { (context /tb_FIFO/u_fifo )&{\FIFO[3][7] , \FIFO[3][6] , \FIFO[3][5] , \FIFO[3][4] , \FIFO[3][3] , \FIFO[3][2] , \FIFO[3][1] , \FIFO[3][0] }} FIFO_3
quietly WaveActivateNextPane {} 0
add wave -noupdate -label inClock /tb_FIFO/clk
add wave -noupdate -label inReset /tb_FIFO/reset
add wave -noupdate -label inWriteEnable /tb_FIFO/writeEN
add wave -noupdate /tb_FIFO/inData
add wave -noupdate -label inReadEnable /tb_FIFO/readEN
add wave -noupdate /tb_FIFO/u_fifo/FIFO_0
add wave -noupdate /tb_FIFO/u_fifo/FIFO_1
add wave -noupdate /tb_FIFO/u_fifo/FIFO_2
add wave -noupdate /tb_FIFO/u_fifo/FIFO_3
add wave -noupdate /tb_FIFO/u_fifo/outData
add wave -noupdate /tb_FIFO/u_fifo/outDone
add wave -noupdate -color White /tb_FIFO/u_fifo/outFull
add wave -noupdate -color White /tb_FIFO/u_fifo/outAlmostFull
add wave -noupdate -color White /tb_FIFO/u_fifo/outAlmostEmpty
add wave -noupdate -color White /tb_FIFO/u_fifo/outEmpty
add wave -noupdate -color Blue /tb_FIFO/u_fifo/outWriteCount
add wave -noupdate -color Blue /tb_FIFO/u_fifo/outReadCount
add wave -noupdate -color Red /tb_FIFO/u_fifo/outWriteError
add wave -noupdate -color Red /tb_FIFO/u_fifo/outReadError
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2601000 ps} 0}
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
WaveRestoreZoom {0 ps} {4830 ns}
