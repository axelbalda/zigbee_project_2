
module MUXN ( inClock, inReset, inData, inSel, outData );
  input [3:0] inData;
  input [1:0] inSel;
  output [15:0] outData;
  input inClock, inReset;
  wire   \mux0/n6 , \mux0/n5 , \mux0/n4 , \mux0/n3 , \mux0/N35 , \mux0/N32 ,
         \mux0/N29 , \mux0/N26 , \mux0/N25 , \mux0/N24 , \mux0/N23 ,
         \mux0/N22 , \mux3/N35 , \mux3/N32 , \mux3/N29 , \mux3/N26 ,
         \mux3/N25 , \mux3/N24 , \mux3/N23 , \mux3/N22 , \mux2/N35 ,
         \mux2/N32 , \mux2/N29 , \mux2/N26 , \mux2/N25 , \mux2/N24 ,
         \mux2/N23 , \mux2/N22 , \mux1/N35 , \mux1/N32 , \mux1/N29 ,
         \mux1/N26 , \mux1/N25 , \mux1/N24 , \mux1/N23 , \mux1/N22 , n1, n2,
         n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [3:0] s_data0;
  wire   [3:0] s_data1;
  wire   [3:0] s_data2;
  wire   [3:0] s_data3;

  DF1 \s_signal0_reg[3]  ( .D(s_data0[0]), .C(inClock), .Q(outData[15]) );
  DF1 \s_signal0_reg[2]  ( .D(s_data1[0]), .C(inClock), .Q(outData[14]) );
  DF1 \s_signal0_reg[1]  ( .D(s_data2[0]), .C(inClock), .Q(outData[13]) );
  DF1 \s_signal0_reg[0]  ( .D(s_data3[0]), .C(inClock), .Q(outData[12]) );
  DF1 \s_signal1_reg[3]  ( .D(s_data0[1]), .C(inClock), .Q(outData[11]) );
  DF1 \s_signal1_reg[2]  ( .D(s_data1[1]), .C(inClock), .Q(outData[10]) );
  DF1 \s_signal1_reg[1]  ( .D(s_data2[1]), .C(inClock), .Q(outData[9]) );
  DF1 \s_signal1_reg[0]  ( .D(s_data3[1]), .C(inClock), .Q(outData[8]) );
  DF1 \s_signal2_reg[3]  ( .D(s_data0[2]), .C(inClock), .Q(outData[7]) );
  DF1 \s_signal2_reg[2]  ( .D(s_data1[2]), .C(inClock), .Q(outData[6]) );
  DF1 \s_signal2_reg[1]  ( .D(s_data2[2]), .C(inClock), .Q(outData[5]) );
  DF1 \s_signal2_reg[0]  ( .D(s_data3[2]), .C(inClock), .Q(outData[4]) );
  DF1 \s_signal3_reg[3]  ( .D(s_data0[3]), .C(inClock), .Q(outData[3]) );
  DF1 \s_signal3_reg[2]  ( .D(s_data1[3]), .C(inClock), .Q(outData[2]) );
  DF1 \s_signal3_reg[1]  ( .D(s_data2[3]), .C(inClock), .Q(outData[1]) );
  DF1 \s_signal3_reg[0]  ( .D(s_data3[3]), .C(inClock), .Q(outData[0]) );
  NAND30 \mux0/U6  ( .A(n1), .B(n6), .C(inReset), .Q(\mux0/N22 ) );
  NAND30 \mux0/U5  ( .A(inReset), .B(n6), .C(inSel[0]), .Q(\mux0/N23 ) );
  NAND30 \mux0/U4  ( .A(inReset), .B(n1), .C(inSel[1]), .Q(\mux0/N24 ) );
  NAND30 \mux0/U3  ( .A(inSel[0]), .B(inReset), .C(inSel[1]), .Q(\mux0/N25 )
         );
  DF1 \mux0/s_qout_tri_enable_reg[0]  ( .D(\mux0/N22 ), .C(inClock), .QN(
        \mux0/n6 ) );
  DF1 \mux0/s_qout_reg[0]  ( .D(inData[3]), .C(inClock), .Q(\mux0/N35 ) );
  DF1 \mux0/s_qout_tri_enable_reg[1]  ( .D(\mux0/N23 ), .C(inClock), .QN(
        \mux0/n5 ) );
  DF1 \mux0/s_qout_reg[1]  ( .D(inData[3]), .C(inClock), .Q(\mux0/N32 ) );
  DF1 \mux0/s_qout_tri_enable_reg[2]  ( .D(\mux0/N24 ), .C(inClock), .QN(
        \mux0/n4 ) );
  DF1 \mux0/s_qout_reg[2]  ( .D(inData[3]), .C(inClock), .Q(\mux0/N29 ) );
  DF1 \mux0/s_qout_tri_enable_reg[3]  ( .D(\mux0/N25 ), .C(inClock), .QN(
        \mux0/n3 ) );
  DF1 \mux0/s_qout_reg[3]  ( .D(inData[3]), .C(inClock), .Q(\mux0/N26 ) );
  NAND30 \mux3/U6  ( .A(n1), .B(n6), .C(inReset), .Q(\mux3/N22 ) );
  NAND30 \mux3/U5  ( .A(inReset), .B(n6), .C(inSel[0]), .Q(\mux3/N23 ) );
  NAND30 \mux3/U4  ( .A(inReset), .B(n1), .C(inSel[1]), .Q(\mux3/N24 ) );
  NAND30 \mux3/U3  ( .A(inSel[0]), .B(inReset), .C(inSel[1]), .Q(\mux3/N25 )
         );
  DF1 \mux3/s_qout_tri_enable_reg[0]  ( .D(\mux3/N22 ), .C(inClock), .QN(n14)
         );
  DF1 \mux3/s_qout_reg[0]  ( .D(inData[0]), .C(inClock), .Q(\mux3/N35 ) );
  DF1 \mux3/s_qout_tri_enable_reg[1]  ( .D(\mux3/N23 ), .C(inClock), .QN(n13)
         );
  DF1 \mux3/s_qout_reg[1]  ( .D(inData[0]), .C(inClock), .Q(\mux3/N32 ) );
  DF1 \mux3/s_qout_tri_enable_reg[2]  ( .D(\mux3/N24 ), .C(inClock), .QN(n12)
         );
  DF1 \mux3/s_qout_reg[2]  ( .D(inData[0]), .C(inClock), .Q(\mux3/N29 ) );
  DF1 \mux3/s_qout_tri_enable_reg[3]  ( .D(\mux3/N25 ), .C(inClock), .QN(n11)
         );
  DF1 \mux3/s_qout_reg[3]  ( .D(inData[0]), .C(inClock), .Q(\mux3/N26 ) );
  CLKIN0 \mux2/U7  ( .A(inSel[1]), .Q(n6) );
  NAND30 \mux2/U6  ( .A(n1), .B(n6), .C(inReset), .Q(\mux2/N22 ) );
  NAND30 \mux2/U5  ( .A(inReset), .B(n6), .C(inSel[0]), .Q(\mux2/N23 ) );
  NAND30 \mux2/U4  ( .A(inReset), .B(n1), .C(inSel[1]), .Q(\mux2/N24 ) );
  NAND30 \mux2/U3  ( .A(inSel[0]), .B(inReset), .C(inSel[1]), .Q(\mux2/N25 )
         );
  DF1 \mux2/s_qout_tri_enable_reg[0]  ( .D(\mux2/N22 ), .C(inClock), .QN(n10)
         );
  DF1 \mux2/s_qout_reg[0]  ( .D(inData[1]), .C(inClock), .Q(\mux2/N35 ) );
  DF1 \mux2/s_qout_tri_enable_reg[1]  ( .D(\mux2/N23 ), .C(inClock), .QN(n9)
         );
  DF1 \mux2/s_qout_reg[1]  ( .D(inData[1]), .C(inClock), .Q(\mux2/N32 ) );
  DF1 \mux2/s_qout_tri_enable_reg[2]  ( .D(\mux2/N24 ), .C(inClock), .QN(n8)
         );
  DF1 \mux2/s_qout_reg[2]  ( .D(inData[1]), .C(inClock), .Q(\mux2/N29 ) );
  DF1 \mux2/s_qout_tri_enable_reg[3]  ( .D(\mux2/N25 ), .C(inClock), .QN(n7)
         );
  DF1 \mux2/s_qout_reg[3]  ( .D(inData[1]), .C(inClock), .Q(\mux2/N26 ) );
  CLKIN0 \mux1/U8  ( .A(inSel[0]), .Q(n1) );
  NAND30 \mux1/U6  ( .A(n1), .B(n6), .C(inReset), .Q(\mux1/N22 ) );
  NAND30 \mux1/U5  ( .A(inReset), .B(n6), .C(inSel[0]), .Q(\mux1/N23 ) );
  NAND30 \mux1/U4  ( .A(inReset), .B(n1), .C(inSel[1]), .Q(\mux1/N24 ) );
  NAND30 \mux1/U3  ( .A(inSel[0]), .B(inReset), .C(inSel[1]), .Q(\mux1/N25 )
         );
  DF1 \mux1/s_qout_tri_enable_reg[0]  ( .D(\mux1/N22 ), .C(inClock), .QN(n5)
         );
  DF1 \mux1/s_qout_reg[0]  ( .D(inData[2]), .C(inClock), .Q(\mux1/N35 ) );
  DF1 \mux1/s_qout_tri_enable_reg[1]  ( .D(\mux1/N23 ), .C(inClock), .QN(n4)
         );
  DF1 \mux1/s_qout_reg[1]  ( .D(inData[2]), .C(inClock), .Q(\mux1/N32 ) );
  DF1 \mux1/s_qout_tri_enable_reg[2]  ( .D(\mux1/N24 ), .C(inClock), .QN(n3)
         );
  DF1 \mux1/s_qout_reg[2]  ( .D(inData[2]), .C(inClock), .Q(\mux1/N29 ) );
  DF1 \mux1/s_qout_tri_enable_reg[3]  ( .D(\mux1/N25 ), .C(inClock), .QN(n2)
         );
  DF1 \mux1/s_qout_reg[3]  ( .D(inData[2]), .C(inClock), .Q(\mux1/N26 ) );
  BUFE2 \mux0/s_qout_tri[3]  ( .A(\mux0/N26 ), .E(\mux0/n3 ), .Q(s_data0[3])
         );
  BUFE2 \mux0/s_qout_tri[2]  ( .A(\mux0/N29 ), .E(\mux0/n4 ), .Q(s_data0[2])
         );
  BUFE2 \mux0/s_qout_tri[1]  ( .A(\mux0/N32 ), .E(\mux0/n5 ), .Q(s_data0[1])
         );
  BUFE2 \mux0/s_qout_tri[0]  ( .A(\mux0/N35 ), .E(\mux0/n6 ), .Q(s_data0[0])
         );
  BUFE2 \mux3/s_qout_tri[3]  ( .A(\mux3/N26 ), .E(n11), .Q(s_data3[3]) );
  BUFE2 \mux3/s_qout_tri[2]  ( .A(\mux3/N29 ), .E(n12), .Q(s_data3[2]) );
  BUFE2 \mux3/s_qout_tri[1]  ( .A(\mux3/N32 ), .E(n13), .Q(s_data3[1]) );
  BUFE2 \mux3/s_qout_tri[0]  ( .A(\mux3/N35 ), .E(n14), .Q(s_data3[0]) );
  BUFE2 \mux2/s_qout_tri[3]  ( .A(\mux2/N26 ), .E(n7), .Q(s_data2[3]) );
  BUFE2 \mux2/s_qout_tri[2]  ( .A(\mux2/N29 ), .E(n8), .Q(s_data2[2]) );
  BUFE2 \mux2/s_qout_tri[1]  ( .A(\mux2/N32 ), .E(n9), .Q(s_data2[1]) );
  BUFE2 \mux2/s_qout_tri[0]  ( .A(\mux2/N35 ), .E(n10), .Q(s_data2[0]) );
  BUFE2 \mux1/s_qout_tri[3]  ( .A(\mux1/N26 ), .E(n2), .Q(s_data1[3]) );
  BUFE2 \mux1/s_qout_tri[2]  ( .A(\mux1/N29 ), .E(n3), .Q(s_data1[2]) );
  BUFE2 \mux1/s_qout_tri[1]  ( .A(\mux1/N32 ), .E(n4), .Q(s_data1[1]) );
  BUFE2 \mux1/s_qout_tri[0]  ( .A(\mux1/N35 ), .E(n5), .Q(s_data1[0]) );
endmodule

