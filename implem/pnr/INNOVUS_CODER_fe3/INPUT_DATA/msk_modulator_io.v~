`include "../INPUT_DATA/msk_modulator.v"

module msk_modulator_io ( input clk, input reset, input reg i_empty, input reg i_data, output reg o_ready, output reg[3:0] o_sinI, output reg[3:0] o_sinQ, output reg[3:0] o_sinI_four, output reg[3:0] o_sinQ_four);

	wire clk_P, reset_P, i_empty_P, i_data_P, o_ready_P;
	wire [3:0] o_sinI_P;
	wire [3:0] o_sinQ_P;
	wire [3:0] o_sinI_four_P;
	wire [3:0] o_sinQ_four_P;

MSK_MODULATOR t_op (.clk(clk_P), .reset(reset_P), .i_empty(i_empty_P), .i_data(i_data_P), .o_ready(o_ready_P), .o_sinI(o_sinI_P[3:0]), .o_sinQ(o_sinQ_P[3:0]), .o_sinI_four(o_sinI_four_P[3:0]), .o_sinQ_four(o_sinQ_four_P[3:0]));

	
	ITP io_clk ( .PAD(clk), .Y(clk_P) );
	ITP io_reset ( .PAD(reset), .Y(reset_P) );
	
	ITP io_i_empty ( .PAD(i_empty), .Y(i_empty_P) );
	ITP io_i_data ( .PAD(i_data), .Y(i_data_P) );

	BU12SP io_o_ready ( .A(o_ready_P), .PAD(o_ready) );

	BU12SP io_o_sinI_3 ( .A(o_sinI_P[3]), .PAD(o_sinI[3]) );
	BU12SP io_o_sinI_2 ( .A(o_sinI_P[2]), .PAD(o_sinI[2]) );
	BU12SP io_o_sinI_1 ( .A(o_sinI_P[1]), .PAD(o_sinI[1]) );
	BU12SP io_o_sinI_0 ( .A(o_sinI_P[0]), .PAD(o_sinI[0]) );	

	BU12SP io_o_sinQ_3 ( .A(o_sinQ_P[3]), .PAD(o_sinQ[3]) );
	BU12SP io_o_sinQ_2 ( .A(o_sinQ_P[2]), .PAD(o_sinQ[2]) );
	BU12SP io_o_sinQ_1 ( .A(o_sinQ_P[1]), .PAD(o_sinQ[1]) );
	BU12SP io_o_sinQ_0 ( .A(o_sinQ_P[0]), .PAD(o_sinQ[0]) );

	BU12SP io_o_sinI_four_3 ( .A(o_sinI_four_P[3]), .PAD(o_sinI_four[3]) );
	BU12SP io_o_sinI_four_2 ( .A(o_sinI_four_P[2]), .PAD(o_sinI_four[2]) );
	BU12SP io_o_sinI_four_1 ( .A(o_sinI_four_P[1]), .PAD(o_sinI_four[1]) );
	BU12SP io_o_sinI_four_0 ( .A(o_sinI_four_P[0]), .PAD(o_sinI_four[0]) );	

	BU12SP io_o_sinQ_four_3 ( .A(o_sinQ_four_P[3]), .PAD(o_sinQ_four[3]) );
	BU12SP io_o_sinQ_four_2 ( .A(o_sinQ_four_P[2]), .PAD(o_sinQ_four[2]) );
	BU12SP io_o_sinQ_four_1 ( .A(o_sinQ_four_P[1]), .PAD(o_sinQ_four[1]) );
	BU12SP io_o_sinQ_four_0 ( .A(o_sinQ_four_P[0]), .PAD(o_sinQ_four[0]) );

endmodule
