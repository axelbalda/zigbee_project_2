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
logic [2:0] cnt;
logic w_flag; //flag en entree du bloc de decision 
logic w_phase, w_phase_d, w_phase_m, w_phase_f; //w_mux_phase;
wire w_sT, w_sE;
wire [5:0] w_nb_P;

always_ff@(posedge i_clk) begin
	if(i_rst == 1'b0) begin
		cnt_in <= 1'b0;
		cnt_p <= 1'b0;
		w_flag <= 1'b0;
		w_phase <= 1'b0;
		w_phase_d <= 1'b0;
		w_phase_m <= 1'b0;
		w_phase_f <= 1'b0;
	end
	else begin
		if(i_flag) begin
			w_flag <= 1'b0;
			if(cnt_in == 0) begin
				w_flag <= i_flag;
				if(cnt_p != 3) begin
					cnt_p <= cnt_p + 1;
				end
			end	
			if(cnt_in == 1) begin
				w_phase_d <= i_phase;
			end
			if(cnt_in == 2) begin
				w_phase_m <= i_phase;
			end
			if(cnt_in == 3) begin
				w_phase_f <= i_phase;
			end
			if(cnt_in == 4) begin
				w_phase <= ((w_phase_d & w_phase_m) | (w_phase_m & w_phase_f) | (w_phase_d & w_phase_f));
				w_flag <= 1'b1;
				if(cnt_p != 3) begin
					cnt_p <= cnt_p + 1;
				end
			end
			if(cnt_in == 5) begin
				cnt_in <= 1'b1;
			end
			else begin
				cnt_in <= cnt_in + 1;
			end
		end

		if (cnt == 4) begin
			w_flag <= 1'b0;
		end
		if (w_flag == 0) begin
			cnt = 0;
		end
		else begin
			if((cnt_p == 3) && (w_flag)) begin
				cnt <= cnt + 1;
			end
		end
	end
end

div div1 (i_clk, i_rst, w_sT, w_sE, w_nb_P, cnt_p);
phase_detector phd1 (w_phase, w_nb_P, cnt_p, i_clk, i_rst, w_sT, w_sE);
decision dec (w_phase, i_rst, i_clk, w_nb_P, cnt_p, o_data, w_flag, o_flag);

endmodule






