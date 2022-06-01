
module MUX1 ( inClock, inReset, inData, inSel, outData );
  input [1:0] inSel;
  output [3:0] outData;
  input inClock, inReset, inData;
  wire   N22, N23, N24, N25, N26, N29, N32, N35, n1, n2, n3, n4, n5, n6;

  DF1 \s_qout_reg[3]  ( .D(inData), .C(inClock), .Q(N26) );
  DF1 \s_qout_tri_enable_reg[3]  ( .D(N25), .C(inClock), .QN(n3) );
  DF1 \s_qout_reg[2]  ( .D(inData), .C(inClock), .Q(N29) );
  DF1 \s_qout_tri_enable_reg[2]  ( .D(N24), .C(inClock), .QN(n4) );
  DF1 \s_qout_reg[1]  ( .D(inData), .C(inClock), .Q(N32) );
  DF1 \s_qout_tri_enable_reg[1]  ( .D(N23), .C(inClock), .QN(n5) );
  DF1 \s_qout_reg[0]  ( .D(inData), .C(inClock), .Q(N35) );
  DF1 \s_qout_tri_enable_reg[0]  ( .D(N22), .C(inClock), .QN(n6) );
  NAND30 U3 ( .A(inSel[0]), .B(inReset), .C(inSel[1]), .Q(N25) );
  NAND30 U4 ( .A(inReset), .B(n1), .C(inSel[1]), .Q(N24) );
  NAND30 U5 ( .A(inReset), .B(n2), .C(inSel[0]), .Q(N23) );
  NAND30 U6 ( .A(n1), .B(n2), .C(inReset), .Q(N22) );
  CLKIN0 U7 ( .A(inSel[1]), .Q(n2) );
  CLKIN0 U8 ( .A(inSel[0]), .Q(n1) );
  BUFE2 \s_qout_tri[0]  ( .A(N35), .E(n6), .Q(outData[0]) );
  BUFE2 \s_qout_tri[1]  ( .A(N32), .E(n5), .Q(outData[1]) );
  BUFE2 \s_qout_tri[2]  ( .A(N29), .E(n4), .Q(outData[2]) );
  BUFE2 \s_qout_tri[3]  ( .A(N26), .E(n3), .Q(outData[3]) );
endmodule

