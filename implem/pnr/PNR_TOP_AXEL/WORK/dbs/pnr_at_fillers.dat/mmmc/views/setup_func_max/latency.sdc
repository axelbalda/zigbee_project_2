set_clock_latency -source -early -max -rise  -2.56717 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -early -max -fall  -2.59347 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -rise  -2.56717 [get_pins {io_inClock/Y}] -clock inClock 
set_clock_latency -source -late -max -fall  -2.59347 [get_pins {io_inClock/Y}] -clock inClock 
