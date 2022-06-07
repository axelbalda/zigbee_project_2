`timescale 1ns / 1ps
 
module tb_MUX1();

parameter	CLK_PERIOD = 20 ; 
reg         inClock		;
reg			inReset  	;
reg	[1:0]	inSel   	;
reg			inData  	;
reg	[3:0]   outData   	;

DEMUX181 u_demux1 (
	.inData			(in_DEMUX_inDEMUX1			), 
	.inSel			(in_DEMUX_inSEL1			),
	.outData		(sig_DEMUX_outDEMUX1		)
);

DEMUX124 u_demux17 (
	.inData			(in_DEMUX_inDEMUX17		), 
	.inSel			(in_DEMUX_inSEL17		),
	.outData		(sig_DEMUX_outDEMUX17	)
);



initial begin : init
	inClock = 1'b1  ;
	inReset = 1'b1  ;
	inData  = 1'b0  ;
	inSel   = 2'b00 ;
end
 

always #10	inClock = ~inClock ;


initial begin : RESET
	for(int i = 0; i < 5; i++) begin
		inReset = 1'b0 ;
		#CLK_PERIOD ;	
	end
	inReset = 1'b1 ;
end














initial begin : DATA
		for(int i = 0; i < 5; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 1'b0;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 1'b1;
end	 

initial begin : SEL
		for(int i = 0; i < 5; i++) begin
			#CLK_PERIOD ;	
		end
		
		for(int j = 0; j < 2; j++) begin
			inSel = 2'b00;
			#CLK_PERIOD ; #CLK_PERIOD ;
		
			inSel = 2'b01;
			#CLK_PERIOD ; #CLK_PERIOD ;
		
			inSel = 2'b10;
			#CLK_PERIOD ; #CLK_PERIOD ;
		
			inSel = 2'b11;
			#CLK_PERIOD ; #CLK_PERIOD ;
		end
end	



endmodule









