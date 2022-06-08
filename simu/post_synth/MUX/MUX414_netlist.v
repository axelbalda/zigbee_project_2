
module MUX414 ( inData, inSel, outData );
  input [15:0] inData;
  input [1:0] inSel;
  output [3:0] outData;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14;

  NAND20 U1 ( .A(n1), .B(n2), .Q(outData[3]) );
  AOI220 U2 ( .A(inData[3]), .B(n3), .C(inData[7]), .D(n4), .Q(n2) );
  AOI220 U3 ( .A(inData[11]), .B(n5), .C(inData[15]), .D(n6), .Q(n1) );
  NAND20 U4 ( .A(n7), .B(n8), .Q(outData[2]) );
  AOI220 U5 ( .A(inData[2]), .B(n3), .C(inData[6]), .D(n4), .Q(n8) );
  AOI220 U6 ( .A(inData[10]), .B(n5), .C(inData[14]), .D(n6), .Q(n7) );
  NAND20 U7 ( .A(n9), .B(n10), .Q(outData[1]) );
  AOI220 U8 ( .A(inData[1]), .B(n3), .C(inData[5]), .D(n4), .Q(n10) );
  AOI220 U9 ( .A(inData[9]), .B(n5), .C(inData[13]), .D(n6), .Q(n9) );
  NAND20 U10 ( .A(n11), .B(n12), .Q(outData[0]) );
  AOI220 U11 ( .A(inData[0]), .B(n3), .C(inData[4]), .D(n4), .Q(n12) );
  NOR20 U12 ( .A(n13), .B(inSel[1]), .Q(n4) );
  NOR20 U13 ( .A(inSel[0]), .B(inSel[1]), .Q(n3) );
  AOI220 U14 ( .A(inData[8]), .B(n5), .C(inData[12]), .D(n6), .Q(n11) );
  NOR20 U15 ( .A(n14), .B(n13), .Q(n6) );
  CLKIN0 U16 ( .A(inSel[0]), .Q(n13) );
  NOR20 U17 ( .A(n14), .B(inSel[0]), .Q(n5) );
  CLKIN0 U18 ( .A(inSel[1]), .Q(n14) );
endmodule

