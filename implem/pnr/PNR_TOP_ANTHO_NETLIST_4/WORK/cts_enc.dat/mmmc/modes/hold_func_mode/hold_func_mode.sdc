###############################################################
#  Generated by:      Cadence Innovus 17.11-s080_1
#  OS:                Linux x86_64(Host ID cimeld105)
#  Generated on:      Wed May 25 13:54:49 2022
#  Design:            msk_modulator_io
#  Command:           saveDesign cts_enc
###############################################################
current_design msk_modulator_io
create_clock [get_pins {io_clk/Y}]  -name clk -period 50.000000 -waveform {0.000000 25.000000}
set_propagated_clock  [get_pins {io_clk/Y}]
set_load -pin_load -max  10.338  [get_ports {clk}]
set_load -pin_load -min  10.338  [get_ports {clk}]
set_input_transition -min 2  [get_ports {clk}]
set_input_transition -max 3  [get_ports {clk}]
set_load -pin_load -max  10.338  [get_ports {reset}]
set_load -pin_load -min  10.338  [get_ports {reset}]
set_input_transition -min 2  [get_ports {reset}]
set_input_transition -max 3  [get_ports {reset}]
set_load -pin_load -max  10.338  [get_ports {i_empty}]
set_load -pin_load -min  10.338  [get_ports {i_empty}]
set_input_transition -min 2  [get_ports {i_empty}]
set_input_transition -max 3  [get_ports {i_empty}]
set_load -pin_load -max  10.338  [get_ports {i_data}]
set_load -pin_load -min  10.338  [get_ports {i_data}]
set_input_transition -min 2  [get_ports {i_data}]
set_input_transition -max 3  [get_ports {i_data}]
set_max_capacitance 2.56  [get_ports {o_ready}]
set_max_capacitance 2.56  [get_ports {o_sinI[3]}]
set_max_capacitance 2.56  [get_ports {o_sinI[2]}]
set_max_capacitance 2.56  [get_ports {o_sinI[1]}]
set_max_capacitance 2.56  [get_ports {o_sinI[0]}]
set_max_capacitance 2.56  [get_ports {o_sinQ[3]}]
set_max_capacitance 2.56  [get_ports {o_sinQ[2]}]
set_max_capacitance 2.56  [get_ports {o_sinQ[1]}]
set_max_capacitance 2.56  [get_ports {o_sinQ[0]}]
set_clock_uncertainty 10 -setup [get_clocks {clk}]