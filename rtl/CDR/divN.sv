module div (
	input 	i_clk,
	input	i_rst,
	input 	i_T,
	input 	i_E,
	output 	reg [5:0] o_nb_P //number of periods of 50 MHz clk (initialised at 25), to add/remove for adequate sampling
	);
/*
//SystemVerilog: time unit and time precision specifications
timeunit 1ns;
timeprecision 100ps;
*/

initial begin
	o_nb_P = 6'b011001;
end

wire w_en_d, w_en_m, w_en_f, w_en, w_en_freq_synch; 

counter cnt_div (i_clk, i_rst, o_nb_P, w_en_d, w_en_m, w_en_f, w_en, w_en_freq_synch); //the only value used from counter in this block is w_en_freq_synch

always @(posedge i_clk)
begin
	if (i_rst) begin
		if (w_en_freq_synch) begin //div par N tous les nombres de demi-periodes
		
			if (i_T) begin

				unique case (i_E)
					1'b0: 	if (o_nb_P != 6'b010111) begin
							o_nb_P = o_nb_P - 2'b10; // Pour un retard on ajoute une periode
						end
					1'b1: 	if (o_nb_P != 6'b011011) begin
							o_nb_P = o_nb_P + 2'b10; // Pour une avance on retranche une periode
						end
					default: o_nb_P = o_nb_P; // Par defaut ne fait rien
						 
				endcase
			end
		end
	end
	else begin
		o_nb_P = 6'b011001;
	end
end

endmodule