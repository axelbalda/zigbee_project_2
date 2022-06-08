`timescale 1ns / 1ps

 
module tb_MUX();

parameter	CLK_PERIOD = 20 ; 

reg	[1  : 0]	inData211	;
reg	    	    inSel211	;
reg	    	    outData211	;

reg [15 : 0]    inData414	;
reg	[1  : 0]	inSel414	;
reg	[3  : 0] 	outData414	;

reg	[7  : 0]	inData811	;
reg	[2  : 0]	inSel811	;
reg	        	outData811	;


MUX211 u_mux211 (
	.inData			(inData211	), 
	.inSel			(inSel211	),
	.outData		(outData211	)
);

DEMUX414 u_mux414 (
	.inData			(inData414	), 
	.inSel			(inSel414	),
	.outData		(outData414	)
);

MUX811 u_mux811 (
	.inData			(inData811	), 
	.inSel			(inSel811	),
	.outData		(outData811	)
);

initial begin 
	inData211 = 2'b0;
	inSel211  = 1'b0;

	inData414 = 16'b0;
	inSel414  = 2'b0;

	inData811 = 8'b0;
	inSel811  = 3'b0;
end


always begin : SEL

    inSel211  = 1'b0; inSel414  = 2'b00; inSel811  = 3'b000;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b1; inSel414  = 2'b01; inSel811  = 3'b001;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b0; inSel414  = 2'b10; inSel811  = 3'b010;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b1; inSel414  = 2'b11; inSel811  = 3'b011;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b0; inSel414  = 2'b00; inSel811  = 3'b100;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b1; inSel414  = 2'b01; inSel811  = 3'b101;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b0; inSel414  = 2'b10; inSel811  = 3'b110;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

    inSel211  = 1'b1; inSel414  = 2'b11; inSel811  = 3'b111;
	#CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ; #CLK_PERIOD ;

end

always begin : DATA

	inData211 = 2'b00;
    inData414 = 16'h00;
    inData811 = 8'h0;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h01;
    inData811 = 8'h1;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h02;
    inData811 = 8'h2;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h03;
    inData811 = 8'h3;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h04;
    inData811 = 8'h4;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h05;
    inData811 = 8'h5;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h06;
    inData811 = 8'h6;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h07;
    inData811 = 8'h7;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h08;
    inData811 = 8'h8;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h09;
    inData811 = 8'h9;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h0A;
    inData811 = 8'hA;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h0B;
    inData811 = 8'hB;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h0C;
    inData811 = 8'hC;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h0D;
    inData811 = 8'hD;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h0E;
    inData811 = 8'hE;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h0F;
    inData811 = 8'hF;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h00;
    inData811 = 8'h0;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h10;
    inData811 = 8'h1;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h20;
    inData811 = 8'h2;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h30;
    inData811 = 8'h3;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h40;
    inData811 = 8'h4;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h50;
    inData811 = 8'h5;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'h60;
    inData811 = 8'h6;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'h70;
    inData811 = 8'h7;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'h80;
    inData811 = 8'h8;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'h90;
    inData811 = 8'h9;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'hA0;
    inData811 = 8'hA;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'hB0;
    inData811 = 8'hB;
    #CLK_PERIOD;

	inData211 = 2'b00;
    inData414 = 16'hC0;
    inData811 = 8'hC;
    #CLK_PERIOD;

    inData211 = 2'b01;
    inData414 = 16'hD0;
    inData811 = 8'hD;
    #CLK_PERIOD;

    inData211 = 2'b10;
    inData414 = 16'hE0;
    inData811 = 8'hE;
    #CLK_PERIOD;

    inData211 = 2'b11;
    inData414 = 16'hF0;
    inData811 = 8'hF;
    #CLK_PERIOD;

end


endmodule

