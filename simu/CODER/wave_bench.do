onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /msk_modulator_bench/clk
add wave -noupdate /msk_modulator_bench/UUT/clk_10M
add wave -noupdate /msk_modulator_bench/reset
add wave -noupdate /msk_modulator_bench/i_empty
add wave -noupdate /msk_modulator_bench/i_data
add wave -noupdate /msk_modulator_bench/o_ready
add wave -noupdate /msk_modulator_bench/o_sinI
add wave -noupdate /msk_modulator_bench/o_sinQ
add wave -noupdate -divider UUL
add wave -noupdate /msk_modulator_bench/UUT/clk
add wave -noupdate /msk_modulator_bench/UUT/reset
add wave -noupdate /msk_modulator_bench/UUT/i_empty
add wave -noupdate /msk_modulator_bench/UUT/o_ready
add wave -noupdate /msk_modulator_bench/UUT/i_data
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal /msk_modulator_bench/UUT/o_sinI
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal -childformat {{{/msk_modulator_bench/UUT/o_sinQ[3]} -radix decimal} {{/msk_modulator_bench/UUT/o_sinQ[2]} -radix decimal} {{/msk_modulator_bench/UUT/o_sinQ[1]} -radix decimal} {{/msk_modulator_bench/UUT/o_sinQ[0]} -radix decimal}} -subitemconfig {{/msk_modulator_bench/UUT/o_sinQ[3]} {-height 16 -radix decimal} {/msk_modulator_bench/UUT/o_sinQ[2]} {-height 16 -radix decimal} {/msk_modulator_bench/UUT/o_sinQ[1]} {-height 16 -radix decimal} {/msk_modulator_bench/UUT/o_sinQ[0]} {-height 16 -radix decimal}} /msk_modulator_bench/UUT/o_sinQ
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal /msk_modulator_bench/UUT/o_sinI_four
add wave -noupdate -format Analog-Step -height 84 -max 7.0 -min -7.0 -radix decimal /msk_modulator_bench/UUT/o_sinQ_four
add wave -noupdate /msk_modulator_bench/UUT/i
add wave -noupdate /msk_modulator_bench/UUT/j
add wave -noupdate /msk_modulator_bench/UUT/IorQ
add wave -noupdate /msk_modulator_bench/UUT/sin_was_positiveI
add wave -noupdate /msk_modulator_bench/UUT/sin_was_positiveQ
add wave -noupdate /msk_modulator_bench/UUT/isPositiveI
add wave -noupdate /msk_modulator_bench/UUT/isPositiveQ
add wave -noupdate /msk_modulator_bench/UUT/old_i_data
add wave -noupdate /msk_modulator_bench/UUT/stateI
add wave -noupdate /msk_modulator_bench/UUT/next_stateI
add wave -noupdate /msk_modulator_bench/UUT/stateQ
add wave -noupdate /msk_modulator_bench/UUT/next_stateQ
add wave -noupdate /msk_modulator_bench/UUT/array_sin
add wave -noupdate /msk_modulator_bench/UUT/array_sin_neg
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {682970 ps} 0}
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
WaveRestoreZoom {0 ps} {12724280 ps}
