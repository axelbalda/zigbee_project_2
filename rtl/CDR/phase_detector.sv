module phase_detector (
	input 		i_phase, 	   //data of phase entring (0 or 1)
	input 		[5:0] i_nb_P,      //freq of phase sent
	input 		i_clk, 		   //work clk 50 MHz
	input 		i_rst,		   //reset signal
	output 	reg 	o_T, 		   //for Transition: specifies phase transition
	output	reg 	o_E 		   //for Early: specifies delay/advance
	);
 
       
//SystemVerilog: time unit and time precision specifications
timeunit 1ns;
timeprecision 10ps;

logic T, E;

//wire declaration for Alexander type phase detector structure
wire w_en_d, w_en_m, w_en_f, w_en, w_en_freq_synch; //counter out wire:
				//w_en_p : for 10MHz posedge clk
				//w_en_n : for 10MHz negedge clk
				//w_en : for enable sampling of T and E signals in phase detector

wire w_s1, w_s2, w_s3, w_s4; //flip-flop out wire
wire w_m1, w_m2, w_m3, w_m4; //mux out wire

//counter instanciation
counter cnt_phd (i_clk, i_rst, i_nb_P, w_en_d, w_en_m, w_en_f, w_en, w_en_freq_synch);

//muxs instanciation
assign w_m1 = (w_en_d || w_en_f) ? i_phase : w_s1;
assign w_m2 = (w_en_f) ? w_s1 : w_s2;
assign w_m3 = (w_en_m) ? i_phase : w_s3;
assign w_m4 = (w_en_f) ? w_s3 : w_s4;


//flip-flops instanciation
ffd f1 (w_m1, i_clk, i_rst, w_s1);
ffd f2 (w_m2, i_clk, i_rst, w_s2);
ffd f3 (w_m3, i_clk, i_rst, w_s3);
ffd f4 (w_m4, i_clk, i_rst, w_s4);

always_comb
begin
    T = w_s1^w_s2;
    E = w_s2^w_s4;
end

always @(negedge i_clk)
begin
	if (i_rst) begin

		if (w_en) begin
			o_T = T;
			o_E = E;
		end
	end
	else begin
		o_T = 1'b0;
		o_E = 1'b0;
	end
end

endmodule