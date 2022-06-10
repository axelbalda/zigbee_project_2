set_clock_latency -source -early -min -rise  -0.634191 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -early -min -fall  -0.656643 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -min -rise  -0.634191 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -min -fall  -0.656643 [get_pins {io_inClock/Y}] -clock inClock 
