set_clock_latency -source -early -max -rise  -2.60664 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -early -max -fall  -2.63384 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -rise  -2.60664 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -fall  -2.63384 [get_pins {io_inClock/Y}] -clock inClock 
