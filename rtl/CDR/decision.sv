// Verilog: port and variable declarations in module definition
module decision(
	input logic    		i_phase,
	input logic		i_rst,
	input			i_clk,
	input logic [5:0]	i_nb_P,
	input logic [1:0]	i_cnt_p,
	output reg		o_data,

	input reg 		i_flag,
	output reg 	 	o_flag
        );

// SystemVerilog: time unit and time precision declaration
timeunit 1ns;
timeprecision 100ps;

logic	phase_ech, signal_synchro;
logic [5:0] cnt_r;


//wire declaration
wire 	w_en_clk, w_en, w_en_dec, w_s_r, w_en_d, w_en_m, w_en_f, w_en_freq_synch;		//counter out wire
wire 	w_m_signal_synchro, w_m_r; 	//mux out wire

// SystemVerilog:
initial begin
	signal_synchro = 1'b0;
	o_data = 1'b0;
	o_flag = 1'b0;
	phase_ech = 1'b0;
	cnt_r = 1'b0;
end

//retard sur flag
assign w_m_r = (i_flag || o_flag) ? i_flag : w_s_r;

ffd ffd_retard (w_m_r, i_clk, i_rst, w_s_r);

always @(posedge i_clk) begin
	if (i_rst == 1) begin
		o_flag = 1'b0;
		if((cnt_r == (((i_nb_P-1)/2)+1)) && (w_s_r == 1) && (i_cnt_p != 1)) begin
			o_flag = 1'b1;
		end
		if(cnt_r == i_nb_P-1) begin
			cnt_r = 1'b0;
		end
		else begin 
			cnt_r = cnt_r + 1;
		end
	end
	else begin
		o_flag = 1'b0;
		cnt_r = 1'b0;
	end
end

//counter instanciation
counter_decision cnt_dec (i_clk, i_rst, i_nb_P, w_en_clk, w_en_dec);

//mux instanciation
assign w_m_signal_synchro = (w_en_clk) ? ~signal_synchro : signal_synchro;

//flip-flop instanciation
ffd f_clk (w_m_signal_synchro, i_clk, i_rst, signal_synchro);

always @(posedge i_clk) // sur les fronts montants de i_clk
begin
	if (i_rst == 1) begin // si le reset est desactivé
		if (i_cnt_p == 0) begin // sur chaque front montant de la fréquence d'échantillonnage modifiée
			o_data = 1'b0;
		end
		else if (w_en_dec == 1) begin
			o_data = ~i_phase;
		end
	end
	else begin // si le reset est actif
		signal_synchro = 1'b0;
		o_data = 1'b0;
		phase_ech = 1'b0;
	end
	
end
endmodule
