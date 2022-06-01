###################################################################

# Created by write_sdc on Mon May 23 15:58:30 2022

###################################################################
set sdc_version 2.0

create_clock [get_ports inClock]  -period 20  -waveform {0 10}
