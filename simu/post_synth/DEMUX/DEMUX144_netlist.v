
module DEMUX144 ( inData, inSel, outData );
  input [3:0] inData;
  input [1:0] inSel;
  output [15:0] outData;
  wire   n1, n2, n3, n4, n5, n6;

  BUFE2 \demux0/s_qout_tri[2]  ( .A(inData[3]), .E(n4), .Q(outData[7]) );
  BUFE2 \demux0/s_qout_tri[1]  ( .A(inData[3]), .E(n5), .Q(outData[11]) );
  BUFE2 \demux3/s_qout_tri[2]  ( .A(inData[0]), .E(n4), .Q(outData[4]) );
  BUFE2 \demux3/s_qout_tri[1]  ( .A(inData[0]), .E(n5), .Q(outData[8]) );
  BUFE2 \demux2/s_qout_tri[2]  ( .A(inData[1]), .E(n4), .Q(outData[5]) );
  BUFE2 \demux2/s_qout_tri[1]  ( .A(inData[1]), .E(n5), .Q(outData[9]) );
  BUFE2 \demux1/s_qout_tri[2]  ( .A(inData[2]), .E(n4), .Q(outData[6]) );
  BUFE2 \demux1/s_qout_tri[1]  ( .A(inData[2]), .E(n5), .Q(outData[10]) );
  BUFE2 \demux0/s_qout_tri[0]  ( .A(inData[3]), .E(n6), .Q(outData[15]) );
  BUFE2 \demux3/s_qout_tri[0]  ( .A(inData[0]), .E(n6), .Q(outData[12]) );
  BUFE2 \demux2/s_qout_tri[0]  ( .A(inData[1]), .E(n6), .Q(outData[13]) );
  BUFE2 \demux1/s_qout_tri[0]  ( .A(inData[2]), .E(n6), .Q(outData[14]) );
  BUFE2 \demux0/s_qout_tri[3]  ( .A(inData[3]), .E(n3), .Q(outData[3]) );
  BUFE2 \demux3/s_qout_tri[3]  ( .A(inData[0]), .E(n3), .Q(outData[0]) );
  BUFE2 \demux2/s_qout_tri[3]  ( .A(inData[1]), .E(n3), .Q(outData[1]) );
  BUFE2 \demux1/s_qout_tri[3]  ( .A(inData[2]), .E(n3), .Q(outData[2]) );
  NOR20 U1 ( .A(inSel[0]), .B(inSel[1]), .Q(n6) );
  NOR20 U2 ( .A(n1), .B(inSel[1]), .Q(n5) );
  NOR20 U3 ( .A(n2), .B(inSel[0]), .Q(n4) );
  NOR20 U4 ( .A(n2), .B(n1), .Q(n3) );
  CLKIN0 U5 ( .A(inSel[0]), .Q(n1) );
  CLKIN0 U6 ( .A(inSel[1]), .Q(n2) );
endmodule

