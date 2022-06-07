`timescale 1ns / 1ps
 
module tb_MUX1();

parameter	CLK_PERIOD = 20 ; 

reg			inData181	;
reg	[2:0]	inSel181	;
reg	[7:0]	outData181	;

reg			inData121	;
reg			inSel121	;
reg	[1:0]	outData121	;

reg	[3:0]	inData124	;
reg			inSel124	;
reg	[15:0]	outData124	;


DEMUX181 u_demux181 (
	.inData			(inData181	), 
	.inSel			(inSel181	),
	.outData		(outData181	)
);

DEMUX124 u_demux124 (
	.inData			(inData124	), 
	.inSel			(inSel124	),
	.outData		(outData124	)
);

DEMUX121 u_demux121 (
	.inData			(inData121	), 
	.inSel			(inSel121	),
	.outData		(outData121	)
);


initial begin




endmodule









