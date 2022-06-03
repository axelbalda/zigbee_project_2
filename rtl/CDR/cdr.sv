module cdr (
	input 		i_clk,
	input 		i_rst,
	input 		i_phase,
	output reg	o_data,

	input  		i_flag,
	output reg	o_flag
	);

logic [3:0] cnt_in; //permet de compter les i_flag
logic [1:0] cnt_p;
logic en_in;
logic w_flag; //flag en entree du bloc de decision 
logic w_phase, w_mux_phase;
wire w_sT, w_sE;
wire [5:0] w_nb_P;


assign w_mux_phase = (en_in) ? i_phase : w_phase;
ffd ff_phase(w_mux_phase, i_clk, i_rst, w_phase);
//assign w_flag = (en_in) ? i_flag : w_flag;

always @(posedge i_clk) begin
	if(i_rst) begin
		if(i_flag) begin
			w_flag = 1'b0;
			if(cnt_in == 0) begin
				w_flag = i_flag;
				if(cnt_p != 2) begin
					cnt_p = cnt_p + 1;
				end
			end	
			if(cnt_in == 1) begin
				en_in = 1'b0;
			end
			if(cnt_in == 5) begin
				cnt_in = 1'b1;
				if(cnt_p != 2) begin
					cnt_p = cnt_p + 1;
				end
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
		cnt_p = 1'b0;
		en_in = 1'b1;
		w_flag = 1'b0;
		//w_phase = 1'b0; 
	end
end


phase_detector phd1 (w_phase, w_nb_P, i_clk, i_rst, w_sT, w_sE);
div div1 (i_clk, i_rst, w_sT, w_sE, w_nb_P);
decision dec (w_phase, i_rst, i_clk, w_nb_P, cnt_p, o_data, w_flag, o_flag);

endmodule






