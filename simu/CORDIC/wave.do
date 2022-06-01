onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider TB
add wave -noupdate /system_test/clock
add wave -noupdate /system_test/reset
add wave -noupdate /system_test/I
add wave -noupdate /system_test/Q
add wave -noupdate /system_test/enable_in
add wave -noupdate /system_test/enable_out
add wave -noupdate /system_test/counter
add wave -noupdate /system_test/present_state
add wave -noupdate /system_test/dir
add wave -noupdate -divider RTL
add wave -noupdate /system_test/my_system/present_state
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {100000 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {1050 ns}
