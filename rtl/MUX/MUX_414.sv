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
    input  [15 : 0]     inData  ,
    input  [1 : 0]	inSel   ,      
    output [3:0]        outData  
) ;
 
reg s_qout;

assign outData   =  s_qout ;

always_comb begin : MUX

	case(inSel) 

		2'b00   : begin
			s_qout <= {inData[0], inData[1], inData[2], inData[3]};
		end		
		2'b01   : begin
			s_qout <= {inData[4], inData[5], inData[6], inData[7]};
		end
		2'b10   : begin
			s_qout <= {inData[8], inData[9], inData[10], inData[11]};
		end
		2'b11   : begin
			s_qout <= {inData[12], inData[13], inData[14], inData[15]};
		end

	endcase
    
end

endmodule

