module ffd (
	input		i_D,		//input data		
	input		i_clk,		//clock signal
	input 		i_rst,		//reset signal
	output	reg 	o_Q		//output data
	);

//SystemVerilog: time unit and time precision specifications
timeunit 1ns;
timeprecision 100ps;

always @(posedge i_clk)
begin
	if (i_rst == 0) begin
		o_Q = 0;
	end
	else if (i_rst == 1) begin
		o_Q = i_D ;
	end
end

endmodule
