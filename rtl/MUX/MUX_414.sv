//////////////////////////////////////////////////////////////////////////////////
//School: PHELMA
// Engineer: Tom Désesquelle / Axel Baldacchino
//
// Create Date: 21.03.2022 10:55:04
// Design Name: DFF model
// Module Name: MUX_1bit
// Project Name: zigbee_project
// Tool Versions: VIVADO 2018.3
// Description: MUX 4:1 (4 bits)
//
//
// Revision:
// Revision 0.01 - First Commit
//
//////////////////////////////////////////////////////////////////////////////////

module MUX414 (    
    input	[15 : 0]	inData  ,
    input	[1 : 0]	    inSel   ,      
    output	[3 : 0]		outData  
) ;
 
reg s_data0;
reg s_data1;
reg s_data2;
reg s_data3;

reg [3 : 0] s_signal0 ;
reg [3 : 0] s_signal1 ;
reg [3 : 0] s_signal2 ;
reg [3 : 0] s_signal3 ;






/////////////////////////////////////////////////////
//  MUX 0
/////////////////////////////////////////////////////
MUX411 mux0(
            .inData  ( {inData[3], inData[7], inData[11], inData[15]}   ) ,
            .inSel   ( inSel                                            ) ,
            .outData ( s_data0                                          ) 
            ) ;
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//  MUX 1
/////////////////////////////////////////////////////
MUX411 mux1(
            .inData  ( {inData[2], inData[6], inData[10], inData[14]}   ) ,
            .inSel   ( inSel                                            ) ,
            .outData ( s_data1                                          ) 
            ) ;
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//  MUX 2
/////////////////////////////////////////////////////
MUX411 mux2(
            .inData  ( {inData[1], inData[5], inData[9], inData[13]}    ) ,
            .inSel   ( inSel                                            ) ,
            .outData ( s_data2                                          ) 
            ) ;
/////////////////////////////////////////////////////

/////////////////////////////////////////////////////
//  MUX 3
/////////////////////////////////////////////////////
MUX411 mux3(
            .inData  ( {inData[0], inData[4], inData[8], inData[12]}    ) ,
            .inSel   ( inSel                                            ) ,
            .outData ( s_data3                                          ) 
            ) ;
/////////////////////////////////////////////////////

assign outData = {s_data0, s_data1, s_data2, s_data3} ;

endmodule


