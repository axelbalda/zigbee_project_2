set_clock_latency -source -early -min -rise  -0.633689 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -early -min -fall  -0.655872 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -min -rise  -0.633689 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -min -fall  -0.655872 [get_pins {io_inClock/Y}] -clock inClock 
