module cdr (
	input 		i_clk,
	input 		i_rst,
	input 		i_phase,
	output reg	o_data,

	input  		i_flag,
	output reg	o_flag
	);

//SystemVerilog: time unit and time precision specifications
timeunit 1ns;
timeprecision 100ps;

logic [3:0] cnt_in;
logic en_in, w_flag;
wire w_sT, w_sE, w_phase;
wire [5:0] w_nb_P;


initial begin
	cnt_in = 1'b0;
	en_in = 1'b1;
	w_flag = 1'b0;
end

assign w_phase = (en_in) ? i_phase : w_phase;

//assign w_flag = (en_in) ? i_flag : w_flag;

always @(posedge i_clk) begin
	if(i_rst) begin
		if(i_flag) begin
			w_flag = 1'b0;
			if(cnt_in == 0) begin
				w_flag = i_flag;
			end	
			if(cnt_in == 1) begin
				en_in = 1'b0;
			end
			if(cnt_in == 5) begin
				cnt_in = 1'b1;
				en_in = 1'b1;
				w_flag = 1'b1;
			end
			else begin
				cnt_in = cnt_in + 1;
			end
		end
	end
	else begin
		cnt_in = 1'b0;
		en_in = 1'b1;
		w_flag = 1'b0;
	end
end


phase_detector phd1 (i_phase, w_nb_P, i_clk, i_rst, w_sT, w_sE);
div div1 (i_clk, i_rst, w_sT, w_sE, w_nb_P);
decision dec (i_phase, i_rst, i_clk, w_nb_P, o_data, w_flag, o_flag);

endmodule





