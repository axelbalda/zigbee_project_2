
module DEMUX124 ( inData, inSel, outData );
  input [3:0] inData;
  output [7:0] outData;
  input inSel;
  wire   n1;

  BUFE2 \demux0/s_qout_tri[0]  ( .A(inData[3]), .E(n1), .Q(outData[3]) );
  BUFE2 \demux3/s_qout_tri[0]  ( .A(inData[0]), .E(n1), .Q(outData[0]) );
  BUFE2 \demux2/s_qout_tri[0]  ( .A(inData[1]), .E(n1), .Q(outData[1]) );
  BUFE2 \demux1/s_qout_tri[0]  ( .A(inData[2]), .E(n1), .Q(outData[2]) );
  BUFE2 \demux0/s_qout_tri[1]  ( .A(inData[3]), .E(inSel), .Q(outData[7]) );
  BUFE2 \demux3/s_qout_tri[1]  ( .A(inData[0]), .E(inSel), .Q(outData[4]) );
  BUFE2 \demux2/s_qout_tri[1]  ( .A(inData[1]), .E(inSel), .Q(outData[5]) );
  BUFE2 \demux1/s_qout_tri[1]  ( .A(inData[2]), .E(inSel), .Q(outData[6]) );
  CLKIN0 U1 ( .A(inSel), .Q(n1) );
endmodule

