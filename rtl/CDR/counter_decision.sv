module counter_decision (
	input 			i_clk,
	input logic		i_rst,
	input logic [5:0]	i_nb_P,
	output reg 		o_en_clk,
	output reg		o_en
	);

logic [5:0] cnt_clk;
initial begin
	cnt_clk  = 1'b0;
end

always @(posedge i_clk) begin
	
	if(i_rst) begin
		o_en_clk = 1'b0;
		o_en  	 = 1'b0;
		cnt_clk = cnt_clk + 1;

		if (cnt_clk == (i_nb_P-1)/2) begin
			o_en_clk = 1'b1;
			o_en = 1'b1;
		end
		if (cnt_clk == i_nb_P) begin
			o_en_clk = 1'b1;
			cnt_clk = 1'b0;
		end
	end
	else begin
		cnt_clk  = 1'b0;
		o_en_clk = 1'b0;
		o_en  	 = 1'b0;
	end

end

endmodule