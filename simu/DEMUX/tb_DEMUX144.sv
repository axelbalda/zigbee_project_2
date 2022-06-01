`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company:
// Engineer:
//
// Create Date: 17.03.2022 16:05:32
// Design Name:
// Module Name: tb_MUX1
// Project Name:
// Target Devices:
// Tool Versions:
// Description:
//
// Dependencies:
//
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//
//////////////////////////////////////////////////////////////////////////////////

 
module tb_MUXN();

    parameter	CLK_PERIOD = 20 ; 
    reg         inClock         ;
    reg		inReset  	;
    reg	[1:0]	inSel   	;
    reg	[3:0]	inData  	;
    reg	[15:0]  outData   	;


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
		
		inData = 4'b0000;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0001;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0010;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0011;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0100;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0101;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0110;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b0111;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1000;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1001;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1010;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1011;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1100;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1101;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1110;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
		
		inData = 4'b1111;
		for(int i = 0; i < 8; i++) begin
			#CLK_PERIOD ;	
		end
end	 

initial begin : SEL
		for(int i = 0; i < 5; i++) begin
			#CLK_PERIOD ;	
		end
		
		for(int j = 0; j < 16; j++) begin
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

MUXN u_muxN (
	.inClock (inClock) ,
	.inReset (inReset) ,
	.inData  (inData)  ,
	.inSel   (inSel)   ,
	.outData (outData) 
) ;

endmodule

