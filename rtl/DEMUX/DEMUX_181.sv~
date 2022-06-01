//////////////////////////////////////////////////////////////////////////////////
//School: PHELMA
// Engineer: Tom Désesquelle / Axel Baldacchino
//
// Create Date: 21.03.2022 10:55:04
// Design Name: DFF model
// Module Name: MUX_1bit
// Project Name: zigbee_project
// Tool Versions: VIVADO 2018.3
// Description: DEMUX 1:8 (1 bit)
//
//
// Revision:
// Revision 0.01 - First Commit
//
//////////////////////////////////////////////////////////////////////////////////

module DEMUX181 (
    input               inClock ,
    input               inReset ,    
    input               inData  ,
    input  [2 : 0]	inSel   ,      
    output [7 : 0]	outData  
) ;
 
reg [7 : 0] s_qout;

assign outData   =  s_qout ;

always @(posedge inClock) begin : MUX
    if(inReset == 1'b0) begin
        s_qout <= 8'bz;
    end
    else begin
    	case(inSel) 
    	
    		3'b000   : begin
    			s_qout <= {7'bz, inData};
    		end		
    		3'b001   : begin
    			s_qout <= {6'bz, inData, 1'bz};
    		end
    		3'b010   : begin
    			s_qout <= {5'bz, inData, 2'bz};
    		end
    		3'b011   : begin
    			s_qout <= {4'bz, inData, 3'bz};
    		end
		
    		3'b100   : begin
    			s_qout <= {3'bz, inData, 4'bz};
    		end		
    		3'b101   : begin
    			s_qout <= {2'bz, inData, 5'bz};
    		end
    		3'b110   : begin
    			s_qout <= {1'bz, inData, 6'bz};
    		end
    		3'b111   : begin
    			s_qout <= {inData, 7'bz};
    		end
    	endcase
    end
end

endmodule

