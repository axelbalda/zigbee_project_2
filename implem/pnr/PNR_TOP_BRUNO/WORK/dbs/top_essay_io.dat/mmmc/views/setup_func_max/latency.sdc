set_clock_latency -source -early -max -rise  -2.54121 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -early -max -fall  -2.57718 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -rise  -2.54121 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -fall  -2.57718 [get_pins {io_inClock/Y}] -clock inClock 
