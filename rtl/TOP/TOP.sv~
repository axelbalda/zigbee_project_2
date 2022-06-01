module TOP(
	input inClock,
    	input inReset,
    	input in_inFIFO_inData, //NB DE BITS
	input in_DEMUX_inDEMUX1,
	input in_DEMUX_inSEL1,  //NB DE BITS
	input in_DEMUX_inDEMUX2,
	input in_DEMUX_inSEL2,  //NB DE BITS
);

wire sig_inFIFO_inData;
wire sig_inFIFO_inWriteEnable;
wire sig_inFIFO_outData;
wire sig_inFIFO_inReadEnable;
wire sig_inFIFO_outEmpty;

wire sig_coder_inData;
wire sig_coder_outReady;
wire sig_coder_inEmpty;
wire sig_coder_outSinI;
wire sig_coder_outSinQ;
wire sig_coder_outSinIMasked;
wire sig_coder_outSinQMasked;

wire sig_decod_inEOC;
wire sig_decod_inADCI;
wire sig_decod_inADCQ;
wire sig_decod_outI;
wire sig_decod_outQ;
wire sig_decod_outEOC;

wire sig_cordic_inI;
wire sig_cordic_inQ;
wire sig_cordic_inEnable;
wire sig_cordic_outEnable;
wire sig_cordic outDirection;

wire sig_cdr_inFlag;
wire sig_cdr_inPhase;
wire sig_cdr_outFlag;
wire sig_cdr_outData;

wire sig_outFIFO_inWriteEnable;
wire sig_outFIFO_inData;
wire sig_outFIFO_outData;
wire sig_outFIFO_inReadEnable;


wire sig_DEMUX_outDEMUX1;
wire sig_DEMUX_outDEMUX2;

wire in_MUX_inMUX3;
wire in_MUX_inMUX4;
wire in_MUX_inMUX5;
wire in_MUX_inSEL3;  //NB DE BITS
wire sig_MUX_outMUX3;
wire sig_MUX_outMUX4;
wire sig_MUX_outMUX5;


inFIFO u_inFIFO (
	.inClock		(inClock			),
	.inReset		(inReset			),    
	.inReadEnable		(sig_inFIFO_inReadEnable	),
	.inWriteEnable		(sig_inFIFO_inWriteEnable	), 
	.inData			(in_inFIFO_inData		),

	.outWriteCount		(				),   
	.outReadCount		(				),
	.outReadError		(				),
	.outWriteError		(				),
	.outFull		(				),
	.outEmpty		(sig_inFIFO_outEmpty		),
	.outAlmostEmpty		(				),
	.outAlmostFull 		(				),
	.outDone       		(				),
	.outData       		(sig_inFIFO_outData		)
) ;


msk_modulator u_coder (
	.clk			(inClock			), 
	.reset			(inReset			), 
	.i_empty		(sig_coder_inEmpty		), 
	.i_data			(sig_coder_inData		), 
	.o_ready		(sig_coder_outReady		),
	.o_sinI			(sig_coder_outSinI		),
	.o_sinQ			(sig_coder_outSinQ		)
);


decoder_top u_decoder(
	.i_clk			(inClock			),
	.i_rst_n		(inReset			),
	.i_adc_eoc		(sig_decod_inEOC		),
	.i_I_if			(sig_decod_inADCI		),
	.i_Q_if			(sig_decod_inADCQ		),
	.I_BB_postfilter	(sig_decod_outI			),
	.Q_BB_postfilter	(sig_decod_outQ			),
	.postfilter_ready	(sig_decod_outEOC		)
);


system u_cordic(
	.clock			(inClock			),
	.reset			(inReset			),
	.i_enable_in		(sig_cordic_inEnable		),
	.i_I			(sig_cordic_inI			),
	.i_Q			(sig_cordic_inQ			),
	.o_dir			(sig_cordic outDirection	),
	.o_enable_out		(sig_cordic_outEnable		)
);


cdr u_cdr(
	.i_clk			(inClock			),
	.i_rst_n		(inReset			),
	.i_phase		(sig_cdr_inPhase		),
	.i_flag			(sig_cdr_inFlag			),
	.o_data			(sig_cdr_outData		),
	.o_flag			(sig_cdr_outFlag		)
);

	   
outFIFO u_outFIFO (
	.inClock		(inClock			),
    	.inReset		(inReset			),    
    	.inReadEnable		(sig_outFIFO_inReadEnable	),
    	.inWriteEnable		(sig_outFIFO_inWriteEnable	),   
    	.inData			(sig_outFIFO_inData		),  
    
    	.outWriteCount		(				),   
    	.outReadCount		(				),
    	.outReadError		(				),
    	.outWriteError		(				),
    	.outFull		(				),
    	.outEmpty		(				),
    	.outAlmostEmpty		(				),
    	.outAlmostFull		(				),
    	.outDone		(				),	  	
    	.outData		(sig_outFIFO_outData		)
    	
    	
) ;





DEMUX181 u_demux1 (
	.inData			(in_DEMUX_DEMUX1		), 
	.inSel			(in_DEMUX_SEL1			),
	.outData		(sig_DEMUX_outDEMUX1		)
);


DEMUX181 u_demux2 (
	.inData			(in_DEMUX_inDEMUX2		), 
	.inSel			(in_DEMUX_inSEL2		),
	.outData		(sig_DEMUX_outDEMUX2		)
);


MUX211 u_mux3 (
	.inData			(in_MUX_inMUX3		), 
	.inSel			(in_MUX_inSEL3		),
	.outData		(sig_MUX_outMUX3	)
);


MUX211 u_mux4 (
	.inData			(in_MUX_inMUX4		), 
	.inSel			(in_MUX_inSEL3		),
	.outData		(sig_MUX_outMUX4	)
);


MUX211 u_mux5 (
	.inData			(in_MUX_inMUX5		), 
	.inSel			(in_MUX_inSEL3		),
	.outData		(sig_MUX_outMUX5	)
);



