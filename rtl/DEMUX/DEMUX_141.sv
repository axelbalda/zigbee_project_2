//////////////////////////////////////////////////////////////////////////////////
//School: PHELMA
// Engineer: Tom Désesquelle / Axel Baldacchino
//
// Create Date: 21.03.2022 10:55:04
// Design Name: DFF model
// Module Name: MUX_1bit
// Project Name: zigbee_project
// Tool Versions: VIVADO 2018.3
// Description: DEMUX 1:4 (1 bit)
//
//
// Revision:
// Revision 0.01 - First Commit
//
//////////////////////////////////////////////////////////////////////////////////

module DEMUX141 (
    input               inClock ,
    input               inReset ,    
    input               inData  ,
    input  [1 : 0]	inSel   ,      
    output [3 : 0]	outData  
) ;
 
reg [3 : 0] s_qout;

assign outData   =  s_qout ;

always @(posedge inClock) begin : MUX
    if(inReset == 1'b0) begin
        s_qout <= 4'bz;
    end
    else begin
    	case(inSel) 
    	
    		2'b00   : begin
    			s_qout <= {3'bz, inData};
    		end		
    		2'b01   : begin
    			s_qout <= {2'bzz, inData, 1'bz};
    		end
    		2'b10   : begin
    			s_qout <= {1'bz, inData, 2'bz};
    		end
    		2'b11   : begin
    			s_qout <= {inData, 3'bz};
    		end

    	endcase
    end
end

endmodule

