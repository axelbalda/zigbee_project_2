module TOP(
	input			inClock					,
    input			inReset					,
    	
    input	[3:0]	in_inFIFO_inData		, 
    input			in_outFIFO_inReadEnable	, 
    	
	input			in_DEMUX_inDEMUX1		,
	input			in_DEMUX_inDEMUX2		,
	input 	[3:0]	in_DEMUX_inDEMUX17		,
	input 	[3:0]	in_DEMUX_inDEMUX18		,
	
	input	[2:0]	in_DEMUX_inSEL1			,
	input	[2:0]	in_DEMUX_inSEL2			,
	input 			in_MUX_inSEL3			,
	input 	[1:0]	in_MUX_inSEL6			,
	input 	[1:0]	in_MUX_inSEL9			,
	input 			in_MUX_inSEL11			,
	input 			in_MUX_inSEL12			,
	input 	[2:0]	in_MUX_inSEL15			, 
	input 			in_DEMUX_inSEL17		, 

	output 	[3:0]	out_MUX_outMUX9			,	
	output	[3:0]	out_MUX_outMUX10		,	
	output			out_MUX_outMUX15		,	
	output			out_MUX_outMUX16	
);


//////////////////////////////////////////////////////////////////////////////////
//  WIRES FOR MODULES
//////////////////////////////////////////////////////////////////////////////////
wire 			sig_inFIFO_inWriteEnable	;
wire 			sig_inFIFO_outData	 		;
wire 			sig_inFIFO_inReadEnable		;
wire 			sig_inFIFO_outEmpty	 		;

wire 			sig_coder_inData	 		;
wire 			sig_coder_outReady			;
wire 			sig_coder_inEmpty	 		;
wire	[3:0]	sig_coder_outSinI 	 		;
wire	[3:0]	sig_coder_outSinQ	 		;
wire	[3:0]	sig_coder_outSinIMasked		;
wire	[3:0]	sig_coder_outSinQMasked		;

wire 			sig_decod_inEOC				;
wire 	[3:0]	sig_decod_inADCI	 		;
wire 	[3:0]	sig_decod_inADCQ	 		;
wire	[3:0]	sig_decod_outI				;
wire 	[3:0]	sig_decod_outQ				;
wire 			sig_decod_outEOC			;

wire	[3:0]	sig_cordic_inI				;
wire	[3:0]	sig_cordic_inQ		 		;
wire			sig_cordic_inEnable	 		;
wire			sig_cordic_outEnable		;
wire 			sig_cordic_outDirection		;

wire			sig_cdr_inFlag		 		;
wire 			sig_cdr_inPhase		 		;
wire 			sig_cdr_outFlag		 		;
wire 			sig_cdr_outData		 		;

wire 			sig_outFIFO_inWriteEnable	;
wire 			sig_outFIFO_inData			;
wire 	[3:0]	sig_outFIFO_outData			;
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  WIRES FOR TEST
//////////////////////////////////////////////////////////////////////////////////
wire	[7:0]	sig_DEMUX_outDEMUX1			;
wire	[7:0]	sig_DEMUX_outDEMUX2			;
wire 	[7:0]	sig_DEMUX_outDEMUX17		;
wire	[7:0]	sig_DEMUX_outDEMUX18		;

wire	[1:0]	sig_MUX_inMUX3				;  	
wire 	[1:0]	sig_MUX_inMUX4				;  
wire 	[1:0]	sig_MUX_inMUX5				;  	
wire 	[15:0]	sig_MUX_inMUX6				;  
wire 	[15:0]	sig_MUX_inMUX7				;  	
wire 	[1:0]	sig_MUX_inMUX8				;  	
wire 	[15:0]	sig_MUX_inMUX9				;  	
wire 	[15:0]	sig_MUX_inMUX10				; 	
wire 	[1:0]	sig_MUX_inMUX11				; 	
wire 	[1:0]	sig_MUX_inMUX12				;  
wire 	[1:0]	sig_MUX_inMUX13				; 
wire 	[1:0]	sig_MUX_inMUX14				; 	
wire 	[7:0]	sig_MUX_inMUX15				;  	
wire 	[7:0]	sig_MUX_inMUX16				;	 	

wire 			sig_MUX_outMUX3				;	
wire 			sig_MUX_outMUX4				;	
wire 			sig_MUX_outMUX5				;	
wire 	[3:0]	sig_MUX_outMUX6				;	
wire 	[3:0]	sig_MUX_outMUX7				;	
wire 			sig_MUX_outMUX8				;	
wire 			sig_MUX_outMUX11			;	
wire 			sig_MUX_outMUX12			;	
wire 			sig_MUX_outMUX13			;	
wire 			sig_MUX_outMUX14			;	
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  inFIFO instance
//////////////////////////////////////////////////////////////////////////////////
inFIFO u_inFIFO (
	.inClock			(inClock					),
	.inReset			(inReset					),    
	.inReadEnable		(sig_inFIFO_inReadEnable	),
	.inWriteEnable		(sig_inFIFO_inWriteEnable	), 
	.inData				(in_inFIFO_inData			),

	.outWriteCount		(							),   
	.outReadCount		(							),
	.outReadError		(							),
	.outWriteError		(							),
	.outFull			(							),
	.outEmpty			(sig_inFIFO_outEmpty		),
	.outAlmostEmpty		(							),
	.outAlmostFull 		(							),
	.outDone       		(							),
	.outData       		(sig_inFIFO_outData			)
) ;
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  CODER instance
//////////////////////////////////////////////////////////////////////////////////
msk_modulator u_coder (
	.clk			(inClock					), 
	.reset			(inReset					), 
	.i_empty		(sig_coder_inEmpty			), 
	.i_data			(sig_coder_inData			), 
	.o_ready		(sig_coder_outReady			),
	.o_sinI			(sig_coder_outSinI			),
	.o_sinQ			(sig_coder_outSinQ			),
	.o_sinI_four	(sig_coder_outSinIMasked	),
	.o_sinQ_four	(sig_coder_outSinQMasked	)
);
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  DECODER instance
//////////////////////////////////////////////////////////////////////////////////
decoder_top u_decoder(
	.i_clk				(inClock				),
	.i_rst_n			(inReset				),
	.i_adc_eoc			(sig_decod_inEOC		),
	.i_I_if				(sig_decod_inADCI		),
	.i_Q_if				(sig_decod_inADCQ		),
	.o_I_BB				(sig_decod_outI			),
	.o_Q_BB				(sig_decod_outQ			),
	.o_postfilter_ready	(sig_decod_outEOC		)
);
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  CORDIC instance
//////////////////////////////////////////////////////////////////////////////////
system u_cordic(
	.clock			(inClock					),
	.reset			(inReset					),
	.i_enable_in	(sig_cordic_inEnable		),
	.i_I			(sig_cordic_inI				),
	.i_Q			(sig_cordic_inQ				),
	.o_dir			(sig_cordic_outDirection	),
	.o_enable_out	(sig_cordic_outEnable		)
);
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  CDR instance
//////////////////////////////////////////////////////////////////////////////////
cdr u_cdr(
	.i_clk			(inClock				),
	.i_rst			(inReset				),
	.i_phase		(sig_cdr_inPhase		),
	.i_flag			(sig_cdr_inFlag			),
	.o_data			(sig_cdr_outData		),
	.o_flag			(sig_cdr_outFlag		)
);
//////////////////////////////////////////////////////////////////////////////////


//////////////////////////////////////////////////////////////////////////////////
//  outFIFO instance
//////////////////////////////////////////////////////////////////////////////////	   
outFIFO u_outFIFO (
	.inClock				(inClock					),
    	.inReset			(inReset					),    
    	.inReadEnable		(in_outFIFO_inReadEnable	),
    	.inWriteEnable		(sig_outFIFO_inWriteEnable	),   
    	.inData				(sig_outFIFO_inData			),  
    
    	.outWriteCount		(							),   
    	.outReadCount		(							),
    	.outReadError		(							),
    	.outWriteError		(							),
    	.outFull			(							),
    	.outEmpty			(							),
    	.outAlmostEmpty		(							),
    	.outAlmostFull		(							),
    	.outDone			(							),	  	
    	.outData			(sig_outFIFO_outData		)	
) ;
//////////////////////////////////////////////////////////////////////////////////	   


//////////////////////////////////////////////////////////////////////////////////
//  TEST instances
//////////////////////////////////////////////////////////////////////////////////
DEMUX181 u_demux1 (
	.inData			(in_DEMUX_inDEMUX1			), 
	.inSel			(in_DEMUX_inSEL1			),
	.outData		(sig_DEMUX_outDEMUX1		)
);


DEMUX181 u_demux2 (
	.inData			(in_DEMUX_inDEMUX2		), 
	.inSel			(in_DEMUX_inSEL2		),
	.outData		(sig_DEMUX_outDEMUX2	)
);


MUX211 u_mux3 (
	.inData			(sig_MUX_inMUX3			), 
	.inSel			(in_MUX_inSEL3			),
	.outData		(sig_MUX_outMUX3		)
);


MUX211 u_mux4 (
	.inData			(sig_MUX_inMUX4			), 
	.inSel			(in_MUX_inSEL3			),
	.outData		(sig_MUX_outMUX4		)
);


MUX211 u_mux5 (
	.inData			(sig_MUX_inMUX5			), 
	.inSel			(in_MUX_inSEL3			),
	.outData		(sig_MUX_outMUX5		)
);


MUX414 u_mux9 (
	.inData			(sig_MUX_inMUX9			), 
	.inSel			(in_MUX_inSEL9			),
	.outData		(out_MUX_outMUX9		)
);


MUX414 u_mux10 (
	.inData			(sig_MUX_inMUX10		), 
	.inSel			(in_MUX_inSEL9			),
	.outData		(out_MUX_outMUX10		)
);


DEMUX124 u_demux17 (
	.inData			(in_DEMUX_inDEMUX17		), 
	.inSel			(in_DEMUX_inSEL17		),
	.outData		(sig_DEMUX_outDEMUX17	)
);


DEMUX124 u_demux18 (
	.inData			(in_DEMUX_inDEMUX18		), 
	.inSel			(in_DEMUX_inSEL17		),
	.outData		(sig_DEMUX_outDEMUX18	)
);


MUX414 u_mux6 (
	.inData			(sig_MUX_inMUX6			), 
	.inSel			(in_MUX_inSEL6			),
	.outData		(sig_MUX_outMUX6		)
);


MUX414 u_mux7 (
	.inData			(sig_MUX_inMUX7			), 
	.inSel			(in_MUX_inSEL6			),
	.outData		(sig_MUX_outMUX7		)
);


MUX211 u_mux8 (
	.inData			(sig_MUX_inMUX8			), 
	.inSel			(in_MUX_inSEL6[0]		),
	.outData		(sig_MUX_outMUX8		)
);


MUX211 u_mux11 (
	.inData			(sig_MUX_inMUX11		), 
	.inSel			(in_MUX_inSEL11			),
	.outData		(sig_MUX_outMUX11		)
);


MUX211 u_mux14 (
	.inData			(sig_MUX_inMUX14		), 
	.inSel			(in_MUX_inSEL11			),
	.outData		(sig_MUX_outMUX14		)
);


MUX211 u_mux12 (
	.inData			(sig_MUX_inMUX12		), 
	.inSel			(in_MUX_inSEL12			),
	.outData		(sig_MUX_outMUX12		)
);


MUX211 u_mux13 (
	.inData			(sig_MUX_inMUX13		), 
	.inSel			(in_MUX_inSEL12			),
	.outData		(sig_MUX_outMUX13		)
);


MUX811 u_mux15 (
	.inData			(sig_MUX_inMUX15		), 
	.inSel			(in_MUX_inSEL15			),
	.outData		(out_MUX_outMUX15		)
);


MUX811 u_mux16 (
	.inData			(sig_MUX_inMUX16		), 
	.inSel			(in_MUX_inSEL15			),
	.outData		(out_MUX_outMUX16		)
);
//////////////////////////////////////////////////////////////////////////////////

assign sig_MUX_inMUX3  = { sig_coder_outReady		, sig_DEMUX_outDEMUX1[1]														} ;
assign sig_MUX_inMUX4  = { sig_inFIFO_outData		, sig_DEMUX_outDEMUX1[2]														} ;
assign sig_MUX_inMUX5  = { sig_inFIFO_outEmpty		, sig_DEMUX_outDEMUX2[1]														} ;
assign sig_MUX_inMUX6  = { sig_decod_outI			, sig_coder_outSinIMasked	, sig_DEMUX_outDEMUX17[1]	, 4'bz					} ;
assign sig_MUX_inMUX7  = { sig_decod_outQ			, sig_coder_outSinQMasked	, sig_DEMUX_outDEMUX18[1]	, 4'bz					} ;
assign sig_MUX_inMUX8  = { sig_decod_outEOC			, sig_DEMUX_outDEMUX2[2]														} ;
assign sig_MUX_inMUX9  = { sig_coder_outSinI		, sig_coder_outSinIMasked	, sig_MUX_outMUX6			, sig_outFIFO_outData	} ;
assign sig_MUX_inMUX10 = { sig_coder_outSinQ		, sig_coder_outSinQMasked	, sig_MUX_outMUX7			, 4'bz					} ;
assign sig_MUX_inMUX11 = { sig_cordic_outEnable		, sig_DEMUX_outDEMUX1[3]														} ;
assign sig_MUX_inMUX12 = { sig_cdr_outFlag			, sig_DEMUX_outDEMUX1[4]														} ; 
assign sig_MUX_inMUX13 = { sig_cdr_outData			, sig_DEMUX_outDEMUX2[4]														} ; 
assign sig_MUX_inMUX14 = { sig_cordic_outDirection	, sig_DEMUX_outDEMUX2[3]														} ; 
assign sig_MUX_inMUX15 = { sig_inFIFO_outEmpty		, sig_decod_outEOC			, sig_cordic_outDirection	, sig_cdr_outData		} ;
assign sig_MUX_inMUX16 = { sig_inFIFO_outData		, sig_coder_outReady		, sig_cordic_outEnable		, sig_cdr_outFlag		} ;


assign sig_inFIFO_inWriteEnable		= sig_DEMUX_outDEMUX2[0]	;
assign sig_inFIFO_inReadEnable		= sig_MUX_outMUX3			;
assign sig_coder_inData				= sig_MUX_outMUX4			;
assign sig_coder_inEmpty			= sig_MUX_outMUX5			;
assign sig_decod_inEOC				= sig_DEMUX_outDEMUX1[0]	;
assign sig_decod_inADCI				= sig_DEMUX_outDEMUX17[0]	;
assign sig_decod_inADCQ				= sig_DEMUX_outDEMUX18[0]	;
assign sig_cordic_inI				= sig_MUX_outMUX6			;
assign sig_cordic_inQ				= sig_MUX_outMUX7			;
assign sig_cordic_inEnable			= sig_MUX_outMUX8			;
assign sig_cdr_inFlag				= sig_MUX_outMUX11			;
assign sig_cdr_inPhase				= sig_MUX_outMUX14			;
assign sig_outFIFO_inWriteEnable	= sig_MUX_outMUX12			;
assign sig_outFIFO_inData			= sig_MUX_outMUX13			;

endmodule





