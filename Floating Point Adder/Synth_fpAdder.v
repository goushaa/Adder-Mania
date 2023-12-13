/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:59:41 2023
/////////////////////////////////////////////////////////////


module fpAdder_DW01_sub_0 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7;
  wire   [8:0] carry;

  FADDX1 U2_7 ( .A(A[7]), .B(n2), .CI(carry[7]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n2), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n2), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n3), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n4), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n5), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n6), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  INVX0 U1 ( .IN1(B[7]), .QN(n2) );
  INVX0 U2 ( .IN1(B[0]), .QN(n7) );
  INVX0 U3 ( .IN1(A[0]), .QN(n1) );
  NAND2X1 U4 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U5 ( .IN1(B[1]), .QN(n6) );
  INVX0 U6 ( .IN1(B[2]), .QN(n5) );
  INVX0 U7 ( .IN1(B[3]), .QN(n4) );
  INVX0 U8 ( .IN1(B[4]), .QN(n3) );
  XOR2X1 U9 ( .IN1(n1), .IN2(n7), .Q(DIFF[0]) );
endmodule


module fpAdder_DW01_sub_3 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [24:0] carry;

  FADDX1 U2_23 ( .A(A[23]), .B(n15), .CI(carry[23]), .S(DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n14), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n13), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n12), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n19), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n22), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n21), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n20), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n25), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX0 U1 ( .IN1(B[23]), .QN(n15) );
  INVX0 U2 ( .IN1(A[0]), .QN(n1) );
  NAND2X1 U3 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U4 ( .IN1(B[1]), .QN(n23) );
  INVX0 U5 ( .IN1(B[2]), .QN(n24) );
  INVX0 U6 ( .IN1(B[3]), .QN(n25) );
  INVX0 U7 ( .IN1(B[4]), .QN(n2) );
  INVX0 U8 ( .IN1(B[5]), .QN(n3) );
  INVX0 U9 ( .IN1(B[6]), .QN(n4) );
  INVX0 U10 ( .IN1(B[7]), .QN(n5) );
  INVX0 U11 ( .IN1(B[8]), .QN(n16) );
  INVX0 U12 ( .IN1(B[9]), .QN(n17) );
  INVX0 U13 ( .IN1(B[10]), .QN(n6) );
  INVX0 U14 ( .IN1(B[11]), .QN(n7) );
  INVX0 U15 ( .IN1(B[12]), .QN(n8) );
  INVX0 U16 ( .IN1(B[13]), .QN(n9) );
  INVX0 U17 ( .IN1(B[14]), .QN(n10) );
  INVX0 U18 ( .IN1(B[15]), .QN(n11) );
  INVX0 U19 ( .IN1(B[16]), .QN(n20) );
  INVX0 U20 ( .IN1(B[17]), .QN(n21) );
  INVX0 U21 ( .IN1(B[18]), .QN(n22) );
  INVX0 U22 ( .IN1(B[19]), .QN(n19) );
  INVX0 U23 ( .IN1(B[20]), .QN(n12) );
  INVX0 U24 ( .IN1(B[21]), .QN(n13) );
  INVX0 U25 ( .IN1(B[22]), .QN(n14) );
  INVX0 U26 ( .IN1(B[0]), .QN(n18) );
  XOR2X1 U27 ( .IN1(n1), .IN2(n18), .Q(DIFF[0]) );
endmodule


module fpAdder_DW01_sub_4 ( A, B, CI, DIFF, CO );
  input [23:0] A;
  input [23:0] B;
  output [23:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25;
  wire   [24:0] carry;

  FADDX1 U2_23 ( .A(A[23]), .B(n15), .CI(carry[23]), .S(DIFF[23]) );
  FADDX1 U2_22 ( .A(A[22]), .B(n14), .CI(carry[22]), .CO(carry[23]), .S(
        DIFF[22]) );
  FADDX1 U2_21 ( .A(A[21]), .B(n13), .CI(carry[21]), .CO(carry[22]), .S(
        DIFF[21]) );
  FADDX1 U2_20 ( .A(A[20]), .B(n12), .CI(carry[20]), .CO(carry[21]), .S(
        DIFF[20]) );
  FADDX1 U2_19 ( .A(A[19]), .B(n19), .CI(carry[19]), .CO(carry[20]), .S(
        DIFF[19]) );
  FADDX1 U2_18 ( .A(A[18]), .B(n22), .CI(carry[18]), .CO(carry[19]), .S(
        DIFF[18]) );
  FADDX1 U2_17 ( .A(A[17]), .B(n21), .CI(carry[17]), .CO(carry[18]), .S(
        DIFF[17]) );
  FADDX1 U2_16 ( .A(A[16]), .B(n20), .CI(carry[16]), .CO(carry[17]), .S(
        DIFF[16]) );
  FADDX1 U2_15 ( .A(A[15]), .B(n11), .CI(carry[15]), .CO(carry[16]), .S(
        DIFF[15]) );
  FADDX1 U2_14 ( .A(A[14]), .B(n10), .CI(carry[14]), .CO(carry[15]), .S(
        DIFF[14]) );
  FADDX1 U2_13 ( .A(A[13]), .B(n9), .CI(carry[13]), .CO(carry[14]), .S(
        DIFF[13]) );
  FADDX1 U2_12 ( .A(A[12]), .B(n8), .CI(carry[12]), .CO(carry[13]), .S(
        DIFF[12]) );
  FADDX1 U2_11 ( .A(A[11]), .B(n7), .CI(carry[11]), .CO(carry[12]), .S(
        DIFF[11]) );
  FADDX1 U2_10 ( .A(A[10]), .B(n6), .CI(carry[10]), .CO(carry[11]), .S(
        DIFF[10]) );
  FADDX1 U2_9 ( .A(A[9]), .B(n17), .CI(carry[9]), .CO(carry[10]), .S(DIFF[9])
         );
  FADDX1 U2_8 ( .A(A[8]), .B(n16), .CI(carry[8]), .CO(carry[9]), .S(DIFF[8])
         );
  FADDX1 U2_7 ( .A(A[7]), .B(n5), .CI(carry[7]), .CO(carry[8]), .S(DIFF[7]) );
  FADDX1 U2_6 ( .A(A[6]), .B(n4), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n3), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n2), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n25), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3])
         );
  FADDX1 U2_2 ( .A(A[2]), .B(n24), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2])
         );
  FADDX1 U2_1 ( .A(A[1]), .B(n23), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1])
         );
  INVX0 U1 ( .IN1(B[23]), .QN(n15) );
  INVX0 U2 ( .IN1(A[0]), .QN(n1) );
  INVX0 U3 ( .IN1(B[2]), .QN(n24) );
  INVX0 U4 ( .IN1(B[3]), .QN(n25) );
  INVX0 U5 ( .IN1(B[5]), .QN(n3) );
  INVX0 U6 ( .IN1(B[7]), .QN(n5) );
  INVX0 U7 ( .IN1(B[9]), .QN(n17) );
  INVX0 U8 ( .IN1(B[11]), .QN(n7) );
  INVX0 U9 ( .IN1(B[13]), .QN(n9) );
  INVX0 U10 ( .IN1(B[15]), .QN(n11) );
  INVX0 U11 ( .IN1(B[17]), .QN(n21) );
  INVX0 U12 ( .IN1(B[19]), .QN(n19) );
  INVX0 U13 ( .IN1(B[21]), .QN(n13) );
  INVX0 U14 ( .IN1(B[4]), .QN(n2) );
  INVX0 U15 ( .IN1(B[6]), .QN(n4) );
  INVX0 U16 ( .IN1(B[8]), .QN(n16) );
  INVX0 U17 ( .IN1(B[10]), .QN(n6) );
  INVX0 U18 ( .IN1(B[12]), .QN(n8) );
  INVX0 U19 ( .IN1(B[14]), .QN(n10) );
  INVX0 U20 ( .IN1(B[16]), .QN(n20) );
  INVX0 U21 ( .IN1(B[18]), .QN(n22) );
  INVX0 U22 ( .IN1(B[20]), .QN(n12) );
  INVX0 U23 ( .IN1(B[22]), .QN(n14) );
  NAND2X1 U24 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U25 ( .IN1(B[1]), .QN(n23) );
  INVX0 U26 ( .IN1(B[0]), .QN(n18) );
  XOR2X1 U27 ( .IN1(n1), .IN2(n18), .Q(DIFF[0]) );
endmodule


module fpAdder_DW01_inc_0 ( A, SUM );
  input [7:0] A;
  output [7:0] SUM;

  wire   [7:2] carry;

  HADDX1 U1_1_6 ( .A0(A[6]), .B0(carry[6]), .C1(carry[7]), .SO(SUM[6]) );
  HADDX1 U1_1_5 ( .A0(A[5]), .B0(carry[5]), .C1(carry[6]), .SO(SUM[5]) );
  HADDX1 U1_1_4 ( .A0(A[4]), .B0(carry[4]), .C1(carry[5]), .SO(SUM[4]) );
  HADDX1 U1_1_3 ( .A0(A[3]), .B0(carry[3]), .C1(carry[4]), .SO(SUM[3]) );
  HADDX1 U1_1_2 ( .A0(A[2]), .B0(carry[2]), .C1(carry[3]), .SO(SUM[2]) );
  HADDX1 U1_1_1 ( .A0(A[1]), .B0(A[0]), .C1(carry[2]), .SO(SUM[1]) );
  INVX0 U1 ( .IN1(A[0]), .QN(SUM[0]) );
  XOR2X1 U2 ( .IN1(carry[7]), .IN2(A[7]), .Q(SUM[7]) );
endmodule


module fpAdder_DW01_add_0 ( A, B, CI, SUM, CO );
  input [24:0] A;
  input [24:0] B;
  output [24:0] SUM;
  input CI;
  output CO;
  wire   n1;
  wire   [24:1] carry;

  FADDX1 U1_23 ( .A(A[23]), .B(B[23]), .CI(carry[23]), .CO(SUM[24]), .S(
        SUM[23]) );
  FADDX1 U1_22 ( .A(A[22]), .B(B[22]), .CI(carry[22]), .CO(carry[23]), .S(
        SUM[22]) );
  FADDX1 U1_21 ( .A(A[21]), .B(B[21]), .CI(carry[21]), .CO(carry[22]), .S(
        SUM[21]) );
  FADDX1 U1_20 ( .A(A[20]), .B(B[20]), .CI(carry[20]), .CO(carry[21]), .S(
        SUM[20]) );
  FADDX1 U1_19 ( .A(A[19]), .B(B[19]), .CI(carry[19]), .CO(carry[20]), .S(
        SUM[19]) );
  FADDX1 U1_18 ( .A(A[18]), .B(B[18]), .CI(carry[18]), .CO(carry[19]), .S(
        SUM[18]) );
  FADDX1 U1_17 ( .A(A[17]), .B(B[17]), .CI(carry[17]), .CO(carry[18]), .S(
        SUM[17]) );
  FADDX1 U1_16 ( .A(A[16]), .B(B[16]), .CI(carry[16]), .CO(carry[17]), .S(
        SUM[16]) );
  FADDX1 U1_15 ( .A(A[15]), .B(B[15]), .CI(carry[15]), .CO(carry[16]), .S(
        SUM[15]) );
  FADDX1 U1_14 ( .A(A[14]), .B(B[14]), .CI(carry[14]), .CO(carry[15]), .S(
        SUM[14]) );
  FADDX1 U1_13 ( .A(A[13]), .B(B[13]), .CI(carry[13]), .CO(carry[14]), .S(
        SUM[13]) );
  FADDX1 U1_12 ( .A(A[12]), .B(B[12]), .CI(carry[12]), .CO(carry[13]), .S(
        SUM[12]) );
  FADDX1 U1_11 ( .A(A[11]), .B(B[11]), .CI(carry[11]), .CO(carry[12]), .S(
        SUM[11]) );
  FADDX1 U1_10 ( .A(A[10]), .B(B[10]), .CI(carry[10]), .CO(carry[11]), .S(
        SUM[10]) );
  FADDX1 U1_9 ( .A(A[9]), .B(B[9]), .CI(carry[9]), .CO(carry[10]), .S(SUM[9])
         );
  FADDX1 U1_8 ( .A(A[8]), .B(B[8]), .CI(carry[8]), .CO(carry[9]), .S(SUM[8])
         );
  FADDX1 U1_7 ( .A(A[7]), .B(B[7]), .CI(carry[7]), .CO(carry[8]), .S(SUM[7])
         );
  FADDX1 U1_6 ( .A(A[6]), .B(B[6]), .CI(carry[6]), .CO(carry[7]), .S(SUM[6])
         );
  FADDX1 U1_5 ( .A(A[5]), .B(B[5]), .CI(carry[5]), .CO(carry[6]), .S(SUM[5])
         );
  FADDX1 U1_4 ( .A(A[4]), .B(B[4]), .CI(carry[4]), .CO(carry[5]), .S(SUM[4])
         );
  FADDX1 U1_3 ( .A(A[3]), .B(B[3]), .CI(carry[3]), .CO(carry[4]), .S(SUM[3])
         );
  FADDX1 U1_2 ( .A(A[2]), .B(B[2]), .CI(carry[2]), .CO(carry[3]), .S(SUM[2])
         );
  FADDX1 U1_1 ( .A(A[1]), .B(B[1]), .CI(n1), .CO(carry[2]), .S(SUM[1]) );
  AND2X1 U1 ( .IN1(B[0]), .IN2(A[0]), .Q(n1) );
  XOR2X1 U2 ( .IN1(B[0]), .IN2(A[0]), .Q(SUM[0]) );
endmodule


module fpAdder_DW_rash_0 ( A, DATA_TC, SH, SH_TC, B );
  input [23:0] A;
  input [7:0] SH;
  output [23:0] B;
  input DATA_TC, SH_TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;

  INVX0 U3 ( .IN1(n82), .QN(n1) );
  INVX0 U4 ( .IN1(n77), .QN(n5) );
  INVX0 U5 ( .IN1(n69), .QN(n6) );
  INVX0 U6 ( .IN1(n84), .QN(n3) );
  INVX0 U7 ( .IN1(n81), .QN(n11) );
  INVX0 U8 ( .IN1(n80), .QN(n10) );
  INVX0 U9 ( .IN1(n59), .QN(n9) );
  INVX0 U10 ( .IN1(n58), .QN(n8) );
  INVX0 U11 ( .IN1(n61), .QN(n4) );
  INVX0 U12 ( .IN1(SH[0]), .QN(n12) );
  INVX0 U13 ( .IN1(SH[2]), .QN(n7) );
  INVX0 U14 ( .IN1(SH[7]), .QN(n2) );
  INVX0 U15 ( .IN1(A[1]), .QN(n16) );
  INVX0 U16 ( .IN1(A[3]), .QN(n14) );
  INVX0 U17 ( .IN1(A[2]), .QN(n15) );
  INVX0 U18 ( .IN1(A[4]), .QN(n13) );
  AO222X1 U19 ( .IN1(n17), .IN2(n18), .IN3(n19), .IN4(n20), .IN5(n21), .IN6(
        n22), .Q(B[9]) );
  AO222X1 U20 ( .IN1(n17), .IN2(n23), .IN3(n19), .IN4(n24), .IN5(n21), .IN6(
        n25), .Q(B[8]) );
  AO221X1 U21 ( .IN1(n17), .IN2(n26), .IN3(n21), .IN4(n27), .IN5(n28), .Q(B[7]) );
  AO222X1 U22 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .IN5(n33), .IN6(
        n34), .Q(n28) );
  AO221X1 U23 ( .IN1(n17), .IN2(n35), .IN3(n21), .IN4(n36), .IN5(n37), .Q(B[6]) );
  AO222X1 U24 ( .IN1(n33), .IN2(n38), .IN3(n31), .IN4(n39), .IN5(n29), .IN6(
        n40), .Q(n37) );
  AO221X1 U25 ( .IN1(n17), .IN2(n41), .IN3(n21), .IN4(n18), .IN5(n42), .Q(B[5]) );
  AO222X1 U26 ( .IN1(n33), .IN2(n22), .IN3(n31), .IN4(n43), .IN5(n29), .IN6(
        n44), .Q(n42) );
  AO221X1 U27 ( .IN1(n17), .IN2(n45), .IN3(n21), .IN4(n23), .IN5(n46), .Q(B[4]) );
  AO222X1 U28 ( .IN1(n33), .IN2(n25), .IN3(n31), .IN4(n47), .IN5(n29), .IN6(
        n48), .Q(n46) );
  NOR4X0 U29 ( .IN1(n4), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n2), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n10), .IN3(A[9]), .IN4(n11), .IN5(n57), .Q(
        n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n8), .IN2(n14), .IN3(n9), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n10), .IN2(A[6]), .IN3(n11), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n2), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n6), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n10), .IN3(A[8]), .IN4(n11), .IN5(n68), .Q(
        n35) );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n8), .IN2(n15), .IN3(n9), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n10), .IN2(A[5]), .IN3(n11), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n2), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n5), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n10), .IN3(A[7]), .IN4(n11), .IN5(n75), .Q(
        n41) );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n10), .IN3(A[11]), .IN4(n11), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n8), .IN2(n16), .IN3(n9), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n1), .IN2(n60), .IN3(n61), .Q(B[19]) );
  NOR2X0 U63 ( .IN1(n82), .IN2(n69), .QN(B[18]) );
  NAND2X0 U64 ( .IN1(n61), .IN2(n83), .QN(n69) );
  NOR2X0 U65 ( .IN1(n82), .IN2(n77), .QN(B[17]) );
  NAND2X0 U66 ( .IN1(n61), .IN2(n20), .QN(n77) );
  MUX21X1 U67 ( .IN1(n43), .IN2(n44), .S(SH[2]), .Q(n20) );
  NOR2X0 U68 ( .IN1(n82), .IN2(n84), .QN(B[16]) );
  AO222X1 U69 ( .IN1(n17), .IN2(n34), .IN3(n33), .IN4(n30), .IN5(n21), .IN6(
        n32), .Q(B[15]) );
  AO222X1 U70 ( .IN1(n17), .IN2(n38), .IN3(n33), .IN4(n40), .IN5(n21), .IN6(
        n39), .Q(B[14]) );
  AO222X1 U71 ( .IN1(n17), .IN2(n22), .IN3(n33), .IN4(n44), .IN5(n21), .IN6(
        n43), .Q(B[13]) );
  AO221X1 U72 ( .IN1(A[20]), .IN2(n10), .IN3(A[19]), .IN4(n11), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n11), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n10), .IN3(A[15]), .IN4(n11), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n7), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n7), .Q(n60) );
  AO221X1 U81 ( .IN1(n10), .IN2(A[22]), .IN3(A[21]), .IN4(n11), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n10), .IN3(A[13]), .IN4(n11), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n10), .IN3(A[17]), .IN4(n11), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n10), .IN3(A[16]), .IN4(n11), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n1), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n10), .IN2(A[21]), .IN3(A[20]), .IN4(n11), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n2), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n10), .IN3(A[12]), .IN4(n11), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n2), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n3), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n10), .IN3(A[6]), .IN4(n11), .IN5(n96), .Q(
        n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n4), .IN2(n7), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n10), .IN3(A[10]), .IN4(n11), .IN5(n97), 
        .Q(n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n10), .IN3(A[14]), .IN4(n11), .IN5(n98), 
        .Q(n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n7), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n10), .IN2(A[23]), .IN3(A[22]), .IN4(n11), .IN5(n99), 
        .Q(n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n10), .IN3(A[18]), .IN4(n11), .IN5(n100), 
        .Q(n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n7), .IN3(n61), .QN(n63) );
  NOR2X0 U121 ( .IN1(SH[3]), .IN2(n102), .QN(n61) );
  NOR2X0 U122 ( .IN1(SH[4]), .IN2(n102), .QN(n49) );
  OR2X1 U123 ( .IN1(SH[5]), .IN2(SH[6]), .Q(n102) );
  OA221X1 U124 ( .IN1(n81), .IN2(n15), .IN3(n80), .IN4(n14), .IN5(n103), .Q(
        n101) );
  AOI22X1 U125 ( .IN1(A[1]), .IN2(n59), .IN3(A[0]), .IN4(n58), .QN(n103) );
  NOR2X0 U126 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n58) );
  NOR2X0 U127 ( .IN1(n12), .IN2(SH[1]), .QN(n59) );
  NAND2X0 U128 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n80) );
  NAND2X0 U129 ( .IN1(SH[1]), .IN2(n12), .QN(n81) );
endmodule


module fpAdder_DW01_sub_5 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n2), .IN3(carry[7]), .Q(DIFF[7]) );
  NAND2X1 U1 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U2 ( .IN1(B[1]), .QN(n8) );
  INVX0 U3 ( .IN1(B[2]), .QN(n7) );
  INVX0 U4 ( .IN1(B[3]), .QN(n6) );
  INVX0 U5 ( .IN1(B[4]), .QN(n5) );
  INVX0 U6 ( .IN1(B[5]), .QN(n4) );
  INVX0 U7 ( .IN1(B[6]), .QN(n3) );
  INVX0 U8 ( .IN1(A[0]), .QN(n1) );
  INVX0 U9 ( .IN1(B[0]), .QN(n9) );
  INVX0 U10 ( .IN1(B[7]), .QN(n2) );
  XOR2X1 U11 ( .IN1(n1), .IN2(n9), .Q(DIFF[0]) );
endmodule


module fpAdder_DW_rash_1 ( A, DATA_TC, SH, SH_TC, B );
  input [23:0] A;
  input [7:0] SH;
  output [23:0] B;
  input DATA_TC, SH_TC;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14, n15, n16,
         n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28, n29, n30,
         n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44,
         n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58,
         n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70, n71, n72,
         n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84, n85, n86,
         n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98, n99, n100,
         n101, n102, n103;

  INVX0 U3 ( .IN1(n82), .QN(n1) );
  INVX0 U4 ( .IN1(n77), .QN(n5) );
  INVX0 U5 ( .IN1(n69), .QN(n6) );
  INVX0 U6 ( .IN1(n84), .QN(n3) );
  INVX0 U7 ( .IN1(n81), .QN(n11) );
  INVX0 U8 ( .IN1(n80), .QN(n10) );
  INVX0 U9 ( .IN1(n59), .QN(n9) );
  INVX0 U10 ( .IN1(n58), .QN(n8) );
  INVX0 U11 ( .IN1(n61), .QN(n4) );
  INVX0 U12 ( .IN1(SH[0]), .QN(n12) );
  INVX0 U13 ( .IN1(SH[2]), .QN(n7) );
  INVX0 U14 ( .IN1(SH[7]), .QN(n2) );
  INVX0 U15 ( .IN1(A[1]), .QN(n16) );
  INVX0 U16 ( .IN1(A[3]), .QN(n14) );
  INVX0 U17 ( .IN1(A[2]), .QN(n15) );
  INVX0 U18 ( .IN1(A[4]), .QN(n13) );
  AO222X1 U19 ( .IN1(n17), .IN2(n18), .IN3(n19), .IN4(n20), .IN5(n21), .IN6(
        n22), .Q(B[9]) );
  AO222X1 U20 ( .IN1(n17), .IN2(n23), .IN3(n19), .IN4(n24), .IN5(n21), .IN6(
        n25), .Q(B[8]) );
  AO221X1 U21 ( .IN1(n17), .IN2(n26), .IN3(n21), .IN4(n27), .IN5(n28), .Q(B[7]) );
  AO222X1 U22 ( .IN1(n29), .IN2(n30), .IN3(n31), .IN4(n32), .IN5(n33), .IN6(
        n34), .Q(n28) );
  AO221X1 U23 ( .IN1(n17), .IN2(n35), .IN3(n21), .IN4(n36), .IN5(n37), .Q(B[6]) );
  AO222X1 U24 ( .IN1(n33), .IN2(n38), .IN3(n31), .IN4(n39), .IN5(n29), .IN6(
        n40), .Q(n37) );
  AO221X1 U25 ( .IN1(n17), .IN2(n41), .IN3(n21), .IN4(n18), .IN5(n42), .Q(B[5]) );
  AO222X1 U26 ( .IN1(n33), .IN2(n22), .IN3(n31), .IN4(n43), .IN5(n29), .IN6(
        n44), .Q(n42) );
  AO221X1 U27 ( .IN1(n17), .IN2(n45), .IN3(n21), .IN4(n23), .IN5(n46), .Q(B[4]) );
  AO222X1 U28 ( .IN1(n33), .IN2(n25), .IN3(n31), .IN4(n47), .IN5(n29), .IN6(
        n48), .Q(n46) );
  NOR4X0 U29 ( .IN1(n4), .IN2(n49), .IN3(SH[2]), .IN4(SH[7]), .QN(n29) );
  AND2X1 U30 ( .IN1(n19), .IN2(SH[2]), .Q(n31) );
  OA21X1 U31 ( .IN1(n50), .IN2(n51), .IN3(n2), .Q(B[3]) );
  MUX21X1 U32 ( .IN1(n52), .IN2(n53), .S(n49), .Q(n51) );
  AO222X1 U33 ( .IN1(n54), .IN2(n34), .IN3(n55), .IN4(n27), .IN5(n56), .IN6(
        n26), .Q(n53) );
  AO221X1 U34 ( .IN1(A[10]), .IN2(n10), .IN3(A[9]), .IN4(n11), .IN5(n57), .Q(
        n26) );
  AO22X1 U35 ( .IN1(A[7]), .IN2(n58), .IN3(A[8]), .IN4(n59), .Q(n57) );
  AND2X1 U36 ( .IN1(n60), .IN2(n61), .Q(n52) );
  NOR2X0 U37 ( .IN1(n62), .IN2(n63), .QN(n50) );
  OA221X1 U38 ( .IN1(n8), .IN2(n14), .IN3(n9), .IN4(n13), .IN5(n64), .Q(n62)
         );
  AOI22X1 U39 ( .IN1(n10), .IN2(A[6]), .IN3(n11), .IN4(A[5]), .QN(n64) );
  OA21X1 U40 ( .IN1(n65), .IN2(n66), .IN3(n2), .Q(B[2]) );
  MUX21X1 U41 ( .IN1(n6), .IN2(n67), .S(n49), .Q(n66) );
  AO222X1 U42 ( .IN1(n54), .IN2(n38), .IN3(n55), .IN4(n36), .IN5(n56), .IN6(
        n35), .Q(n67) );
  AO221X1 U43 ( .IN1(A[9]), .IN2(n10), .IN3(A[8]), .IN4(n11), .IN5(n68), .Q(
        n35) );
  AO22X1 U44 ( .IN1(A[6]), .IN2(n58), .IN3(A[7]), .IN4(n59), .Q(n68) );
  NOR2X0 U45 ( .IN1(n70), .IN2(n63), .QN(n65) );
  OA221X1 U46 ( .IN1(n8), .IN2(n15), .IN3(n9), .IN4(n14), .IN5(n71), .Q(n70)
         );
  AOI22X1 U47 ( .IN1(n10), .IN2(A[5]), .IN3(n11), .IN4(A[4]), .QN(n71) );
  AND2X1 U48 ( .IN1(n17), .IN2(n30), .Q(B[23]) );
  AND2X1 U49 ( .IN1(n40), .IN2(n17), .Q(B[22]) );
  AND2X1 U50 ( .IN1(n44), .IN2(n17), .Q(B[21]) );
  AND2X1 U51 ( .IN1(n48), .IN2(n17), .Q(B[20]) );
  OA21X1 U52 ( .IN1(n72), .IN2(n73), .IN3(n2), .Q(B[1]) );
  MUX21X1 U53 ( .IN1(n5), .IN2(n74), .S(n49), .Q(n73) );
  AO222X1 U54 ( .IN1(n54), .IN2(n22), .IN3(n55), .IN4(n18), .IN5(n56), .IN6(
        n41), .Q(n74) );
  AO221X1 U55 ( .IN1(A[8]), .IN2(n10), .IN3(A[7]), .IN4(n11), .IN5(n75), .Q(
        n41) );
  AO22X1 U56 ( .IN1(A[5]), .IN2(n58), .IN3(A[6]), .IN4(n59), .Q(n75) );
  AO221X1 U57 ( .IN1(A[12]), .IN2(n10), .IN3(A[11]), .IN4(n11), .IN5(n76), .Q(
        n18) );
  AO22X1 U58 ( .IN1(A[9]), .IN2(n58), .IN3(A[10]), .IN4(n59), .Q(n76) );
  NOR2X0 U59 ( .IN1(n78), .IN2(n63), .QN(n72) );
  OA221X1 U60 ( .IN1(n8), .IN2(n16), .IN3(n9), .IN4(n15), .IN5(n79), .Q(n78)
         );
  OA22X1 U61 ( .IN1(n80), .IN2(n13), .IN3(n81), .IN4(n14), .Q(n79) );
  AND3X1 U62 ( .IN1(n1), .IN2(n60), .IN3(n61), .Q(B[19]) );
  NOR2X0 U63 ( .IN1(n82), .IN2(n69), .QN(B[18]) );
  NAND2X0 U64 ( .IN1(n61), .IN2(n83), .QN(n69) );
  NOR2X0 U65 ( .IN1(n82), .IN2(n77), .QN(B[17]) );
  NAND2X0 U66 ( .IN1(n61), .IN2(n20), .QN(n77) );
  MUX21X1 U67 ( .IN1(n43), .IN2(n44), .S(SH[2]), .Q(n20) );
  NOR2X0 U68 ( .IN1(n82), .IN2(n84), .QN(B[16]) );
  AO222X1 U69 ( .IN1(n17), .IN2(n34), .IN3(n33), .IN4(n30), .IN5(n21), .IN6(
        n32), .Q(B[15]) );
  AO222X1 U70 ( .IN1(n17), .IN2(n38), .IN3(n33), .IN4(n40), .IN5(n21), .IN6(
        n39), .Q(B[14]) );
  AO222X1 U71 ( .IN1(n17), .IN2(n22), .IN3(n33), .IN4(n44), .IN5(n21), .IN6(
        n43), .Q(B[13]) );
  AO221X1 U72 ( .IN1(A[20]), .IN2(n10), .IN3(A[19]), .IN4(n11), .IN5(n85), .Q(
        n43) );
  AO22X1 U73 ( .IN1(A[17]), .IN2(n58), .IN3(A[18]), .IN4(n59), .Q(n85) );
  AO222X1 U74 ( .IN1(A[22]), .IN2(n59), .IN3(A[23]), .IN4(n11), .IN5(A[21]), 
        .IN6(n58), .Q(n44) );
  AO221X1 U75 ( .IN1(A[16]), .IN2(n10), .IN3(A[15]), .IN4(n11), .IN5(n86), .Q(
        n22) );
  AO22X1 U76 ( .IN1(A[13]), .IN2(n58), .IN3(A[14]), .IN4(n59), .Q(n86) );
  AO222X1 U77 ( .IN1(n17), .IN2(n25), .IN3(n33), .IN4(n48), .IN5(n21), .IN6(
        n47), .Q(B[12]) );
  AND2X1 U78 ( .IN1(n19), .IN2(n7), .Q(n33) );
  AO222X1 U79 ( .IN1(n21), .IN2(n34), .IN3(n17), .IN4(n27), .IN5(n19), .IN6(
        n60), .Q(B[11]) );
  MUX21X1 U80 ( .IN1(n30), .IN2(n32), .S(n7), .Q(n60) );
  AO221X1 U81 ( .IN1(n10), .IN2(A[22]), .IN3(A[21]), .IN4(n11), .IN5(n87), .Q(
        n32) );
  AO22X1 U82 ( .IN1(A[19]), .IN2(n58), .IN3(A[20]), .IN4(n59), .Q(n87) );
  AND2X1 U83 ( .IN1(n58), .IN2(A[23]), .Q(n30) );
  AO221X1 U84 ( .IN1(A[14]), .IN2(n10), .IN3(A[13]), .IN4(n11), .IN5(n88), .Q(
        n27) );
  AO22X1 U85 ( .IN1(A[11]), .IN2(n58), .IN3(A[12]), .IN4(n59), .Q(n88) );
  AO221X1 U86 ( .IN1(A[18]), .IN2(n10), .IN3(A[17]), .IN4(n11), .IN5(n89), .Q(
        n34) );
  AO22X1 U87 ( .IN1(A[15]), .IN2(n58), .IN3(A[16]), .IN4(n59), .Q(n89) );
  AO222X1 U88 ( .IN1(n17), .IN2(n36), .IN3(n19), .IN4(n83), .IN5(n21), .IN6(
        n38), .Q(B[10]) );
  AO221X1 U89 ( .IN1(A[17]), .IN2(n10), .IN3(A[16]), .IN4(n11), .IN5(n90), .Q(
        n38) );
  AO22X1 U90 ( .IN1(A[14]), .IN2(n58), .IN3(A[15]), .IN4(n59), .Q(n90) );
  AND2X1 U91 ( .IN1(n56), .IN2(n1), .Q(n21) );
  MUX21X1 U92 ( .IN1(n39), .IN2(n40), .S(SH[2]), .Q(n83) );
  AO22X1 U93 ( .IN1(n58), .IN2(A[22]), .IN3(n59), .IN4(A[23]), .Q(n40) );
  AO221X1 U94 ( .IN1(n10), .IN2(A[21]), .IN3(A[20]), .IN4(n11), .IN5(n91), .Q(
        n39) );
  AO22X1 U95 ( .IN1(A[18]), .IN2(n58), .IN3(A[19]), .IN4(n59), .Q(n91) );
  NOR2X0 U96 ( .IN1(n82), .IN2(n61), .QN(n19) );
  NAND2X0 U97 ( .IN1(n49), .IN2(n2), .QN(n82) );
  AO221X1 U98 ( .IN1(A[13]), .IN2(n10), .IN3(A[12]), .IN4(n11), .IN5(n92), .Q(
        n36) );
  AO22X1 U99 ( .IN1(A[10]), .IN2(n58), .IN3(A[11]), .IN4(n59), .Q(n92) );
  NOR2X0 U100 ( .IN1(n63), .IN2(SH[7]), .QN(n17) );
  OA21X1 U101 ( .IN1(n93), .IN2(n94), .IN3(n2), .Q(B[0]) );
  MUX21X1 U102 ( .IN1(n3), .IN2(n95), .S(n49), .Q(n94) );
  AO222X1 U103 ( .IN1(n54), .IN2(n25), .IN3(n55), .IN4(n23), .IN5(n56), .IN6(
        n45), .Q(n95) );
  AO221X1 U104 ( .IN1(A[7]), .IN2(n10), .IN3(A[6]), .IN4(n11), .IN5(n96), .Q(
        n45) );
  AO22X1 U105 ( .IN1(A[4]), .IN2(n58), .IN3(A[5]), .IN4(n59), .Q(n96) );
  NOR2X0 U106 ( .IN1(n4), .IN2(n7), .QN(n56) );
  AO221X1 U107 ( .IN1(A[11]), .IN2(n10), .IN3(A[10]), .IN4(n11), .IN5(n97), 
        .Q(n23) );
  AO22X1 U108 ( .IN1(A[8]), .IN2(n58), .IN3(A[9]), .IN4(n59), .Q(n97) );
  NOR2X0 U109 ( .IN1(n61), .IN2(SH[2]), .QN(n55) );
  AO221X1 U110 ( .IN1(A[15]), .IN2(n10), .IN3(A[14]), .IN4(n11), .IN5(n98), 
        .Q(n25) );
  AO22X1 U111 ( .IN1(A[12]), .IN2(n58), .IN3(A[13]), .IN4(n59), .Q(n98) );
  NOR2X0 U112 ( .IN1(n7), .IN2(n61), .QN(n54) );
  NAND2X0 U113 ( .IN1(n61), .IN2(n24), .QN(n84) );
  MUX21X1 U114 ( .IN1(n47), .IN2(n48), .S(SH[2]), .Q(n24) );
  AO221X1 U115 ( .IN1(n10), .IN2(A[23]), .IN3(A[22]), .IN4(n11), .IN5(n99), 
        .Q(n48) );
  AO22X1 U116 ( .IN1(A[20]), .IN2(n58), .IN3(A[21]), .IN4(n59), .Q(n99) );
  AO221X1 U117 ( .IN1(A[19]), .IN2(n10), .IN3(A[18]), .IN4(n11), .IN5(n100), 
        .Q(n47) );
  AO22X1 U118 ( .IN1(A[16]), .IN2(n58), .IN3(A[17]), .IN4(n59), .Q(n100) );
  NOR2X0 U119 ( .IN1(n101), .IN2(n63), .QN(n93) );
  NAND3X0 U120 ( .IN1(n49), .IN2(n7), .IN3(n61), .QN(n63) );
  NOR2X0 U121 ( .IN1(SH[3]), .IN2(n102), .QN(n61) );
  NOR2X0 U122 ( .IN1(SH[4]), .IN2(n102), .QN(n49) );
  OR2X1 U123 ( .IN1(SH[5]), .IN2(SH[6]), .Q(n102) );
  OA221X1 U124 ( .IN1(n81), .IN2(n15), .IN3(n80), .IN4(n14), .IN5(n103), .Q(
        n101) );
  AOI22X1 U125 ( .IN1(A[1]), .IN2(n59), .IN3(A[0]), .IN4(n58), .QN(n103) );
  NOR2X0 U126 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n58) );
  NOR2X0 U127 ( .IN1(n12), .IN2(SH[1]), .QN(n59) );
  NAND2X0 U128 ( .IN1(SH[0]), .IN2(SH[1]), .QN(n80) );
  NAND2X0 U129 ( .IN1(SH[1]), .IN2(n12), .QN(n81) );
endmodule


module fpAdder_DW01_sub_6 ( A, B, CI, DIFF, CO );
  input [7:0] A;
  input [7:0] B;
  output [7:0] DIFF;
  input CI;
  output CO;
  wire   n1, n2, n3, n4, n5, n6, n7, n8, n9;
  wire   [8:0] carry;

  FADDX1 U2_6 ( .A(A[6]), .B(n3), .CI(carry[6]), .CO(carry[7]), .S(DIFF[6]) );
  FADDX1 U2_5 ( .A(A[5]), .B(n4), .CI(carry[5]), .CO(carry[6]), .S(DIFF[5]) );
  FADDX1 U2_4 ( .A(A[4]), .B(n5), .CI(carry[4]), .CO(carry[5]), .S(DIFF[4]) );
  FADDX1 U2_3 ( .A(A[3]), .B(n6), .CI(carry[3]), .CO(carry[4]), .S(DIFF[3]) );
  FADDX1 U2_2 ( .A(A[2]), .B(n7), .CI(carry[2]), .CO(carry[3]), .S(DIFF[2]) );
  FADDX1 U2_1 ( .A(A[1]), .B(n8), .CI(carry[1]), .CO(carry[2]), .S(DIFF[1]) );
  XOR3X1 U2_7 ( .IN1(A[7]), .IN2(n2), .IN3(carry[7]), .Q(DIFF[7]) );
  NAND2X1 U1 ( .IN1(B[0]), .IN2(n1), .QN(carry[1]) );
  INVX0 U2 ( .IN1(B[1]), .QN(n8) );
  INVX0 U3 ( .IN1(B[2]), .QN(n7) );
  INVX0 U4 ( .IN1(B[3]), .QN(n6) );
  INVX0 U5 ( .IN1(B[4]), .QN(n5) );
  INVX0 U6 ( .IN1(B[5]), .QN(n4) );
  INVX0 U7 ( .IN1(B[6]), .QN(n3) );
  INVX0 U8 ( .IN1(A[0]), .QN(n1) );
  INVX0 U9 ( .IN1(B[0]), .QN(n9) );
  INVX0 U10 ( .IN1(B[7]), .QN(n2) );
  XOR2X1 U11 ( .IN1(n1), .IN2(n9), .Q(DIFF[0]) );
endmodule


module fpAdder ( A, B, Sum, overFlow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] Sum;
  output overFlow;
  wire   IBA, IBB, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N107, N108, N109, N110, N111, N112, N113,
         N114, N115, N116, N117, N118, N119, N120, N121, N122, N123, N124,
         N125, N126, N127, N128, N129, N130, N131, N133, N134, N135, N136,
         N137, N138, N139, N140, N175, N176, N177, N178, N179, N180, N181,
         N182, N183, N184, N185, N186, N187, N188, N189, N190, N191, N192,
         N193, N194, N195, N196, N197, N198, N199, N200, N201, N202, N203,
         N204, N205, N206, N207, N208, N209, N210, N211, N212, N213, N214,
         N215, N216, N217, N218, N219, N220, N221, N222, N375, N376, N377,
         N378, N379, N415, N467, N468, N469, N471, N474, N475, N476, N477,
         N478, N479, N480, N481, N482, N506, N514, n108, n109, n110, n111,
         n112, n113, n114, n115, n116, n117, n118, n119, n120, n121, n122,
         n123, n124, n125, n126, n127, n128, n129, n130, n131, n132, n133,
         n134, n135, n136, n137, n138, n139, n140, n141, n142, n143, n144,
         n145, n146, n147, n148, n149, n150, n151, n152, n153, n154, n155,
         n156, n157, n158, n159, n160, n161, n162, n163, n164, n165, n166,
         n167, n168, n169, n170, n171, n172, n173, n174, n175, n176, n177,
         n178, n179, n180, n181, n182, n183, n184, n185, n186, n187, n188,
         n189, n190, n191, n192, n193, n194, n195, n196, n197, n198, n199,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n249, n250, n251, n252, n253, n254,
         n255, n256, n257, n258, n259, n260, n261, n262, n263, n264, n265,
         n266, n267, n268, n269, n270, n271, n272, n273, n274, n275, n276,
         n277, n278, n279, n280, n281, n282, n283, n284, n285, n286, n287,
         n288, n289, n290, n291, n292, n293, n294, n295, n296, n297, n298,
         n299, n300, n301, n302, n303, n304, n305, n306, n307, n308, n309,
         n310, n311, n312, n313, n314, n315, n316, n317, n318, n319, n320,
         n321, n322, n323, n324, n325, n326, n327, n328, n329, n330, n331,
         n332, n333, n334, n335, n336, n337, n338, n339, n340, n341, n342,
         n343, n344, n345, n346, n347, n348, n349, n350, n351, n352, n353,
         n354, n355, n356, n357, n358, n359, n360, n361, n362, n363, n364,
         n365, n366, n367, n368, n369, n370, n371, n372, n373, n374, n375,
         n376, n377, n378, n379, n380, n381, n382, n383, n384, n385, n386,
         n387, n388, n389, n390, n391, n392, n393, n394, n395, n396, n397;
  wire   [23:0] MB;
  wire   [23:0] MA;
  wire   [31:0] MSB;
  assign overFlow = N514;

  LATCHX1 \MSB_reg[4]  ( .CLK(N506), .D(N379), .Q(MSB[4]) );
  LATCHX1 \MSB_reg[3]  ( .CLK(N506), .D(N378), .Q(MSB[3]) );
  LATCHX1 \MSB_reg[2]  ( .CLK(N506), .D(N377), .Q(MSB[2]) );
  LATCHX1 \MSB_reg[1]  ( .CLK(N506), .D(N376), .Q(MSB[1]) );
  LATCHX1 \MSB_reg[0]  ( .CLK(N506), .D(N375), .Q(MSB[0]) );
  fpAdder_DW01_sub_0 sub_48_2 ( .A({N103, N102, N101, N100, N99, N98, N97, N96}), .B({N474, N474, N474, N471, N415, N469, N468, N467}), .CI(1'b0), .DIFF({
        N482, N481, N480, N479, N478, N477, N476, N475}) );
  fpAdder_DW01_sub_3 sub_39 ( .A(MB), .B(MA), .CI(1'b0), .DIFF({N222, N221, 
        N220, N219, N218, N217, N216, N215, N214, N213, N212, N211, N210, N209, 
        N208, N207, N206, N205, N204, N203, N202, N201, N200, N199}) );
  fpAdder_DW01_sub_4 sub_36 ( .A(MA), .B(MB), .CI(1'b0), .DIFF({N198, N197, 
        N196, N195, N194, N193, N192, N191, N190, N189, N188, N187, N186, N185, 
        N184, N183, N182, N181, N180, N179, N178, N177, N176, N175}) );
  fpAdder_DW01_inc_0 add_31 ( .A({N103, N102, N101, N100, N99, N98, N97, N96}), 
        .SUM({N140, N139, N138, N137, N136, N135, N134, N133}) );
  fpAdder_DW01_add_0 add_27 ( .A({1'b0, MA}), .B({1'b0, MB}), .CI(1'b0), .SUM(
        {N131, N130, N129, N128, N127, N126, N125, N124, N123, N122, N121, 
        N120, N119, N118, N117, N116, N115, N114, N113, N112, N111, N110, N109, 
        N108, N107}) );
  fpAdder_DW_rash_0 srl_20 ( .A({IBB, B[22:0]}), .DATA_TC(1'b0), .SH({N39, N38, 
        N37, N36, N35, N34, N33, N32}), .SH_TC(1'b0), .B({N63, N62, N61, N60, 
        N59, N58, N57, N56, N55, N54, N53, N52, N51, N50, N49, N48, N47, N46, 
        N45, N44, N43, N42, N41, N40}) );
  fpAdder_DW01_sub_5 sub_20 ( .A(A[30:23]), .B(B[30:23]), .CI(1'b0), .DIFF({
        N39, N38, N37, N36, N35, N34, N33, N32}) );
  fpAdder_DW_rash_1 srl_23 ( .A({IBA, A[22:0]}), .DATA_TC(1'b0), .SH({N71, N70, 
        N69, N68, N67, N66, N65, N64}), .SH_TC(1'b0), .B({N95, N94, N93, N92, 
        N91, N90, N89, N88, N87, N86, N85, N84, N83, N82, N81, N80, N79, N78, 
        N77, N76, N75, N74, N73, N72}) );
  fpAdder_DW01_sub_6 sub_23 ( .A(B[30:23]), .B(A[30:23]), .CI(1'b0), .DIFF({
        N71, N70, N69, N68, N67, N66, N65, N64}) );
  AO21X2 U246 ( .IN1(A[30]), .IN2(n375), .IN3(n376), .Q(n273) );
  AO221X1 U247 ( .IN1(N117), .IN2(n108), .IN3(N116), .IN4(n109), .IN5(n110), 
        .Q(Sum[9]) );
  AO222X1 U248 ( .IN1(n111), .IN2(n112), .IN3(n113), .IN4(n114), .IN5(n115), 
        .IN6(n116), .Q(n110) );
  AO221X1 U249 ( .IN1(N116), .IN2(n108), .IN3(N115), .IN4(n109), .IN5(n117), 
        .Q(Sum[8]) );
  AO222X1 U250 ( .IN1(n111), .IN2(n118), .IN3(n119), .IN4(n113), .IN5(n115), 
        .IN6(n120), .Q(n117) );
  AO222X1 U251 ( .IN1(N115), .IN2(n108), .IN3(n121), .IN4(n122), .IN5(N114), 
        .IN6(n109), .Q(Sum[7]) );
  AO222X1 U252 ( .IN1(N114), .IN2(n108), .IN3(n123), .IN4(n124), .IN5(N113), 
        .IN6(n109), .Q(Sum[6]) );
  INVX0 U253 ( .IN1(n125), .QN(n123) );
  AO222X1 U254 ( .IN1(N113), .IN2(n108), .IN3(n126), .IN4(n124), .IN5(N112), 
        .IN6(n109), .Q(Sum[5]) );
  INVX0 U255 ( .IN1(n127), .QN(n126) );
  AO222X1 U256 ( .IN1(N112), .IN2(n108), .IN3(n121), .IN4(n128), .IN5(N111), 
        .IN6(n109), .Q(Sum[4]) );
  AO222X1 U257 ( .IN1(N111), .IN2(n108), .IN3(n115), .IN4(n129), .IN5(N110), 
        .IN6(n109), .Q(Sum[3]) );
  MUX21X1 U258 ( .IN1(A[31]), .IN2(B[31]), .S(n130), .Q(Sum[31]) );
  AO222X1 U259 ( .IN1(N110), .IN2(n108), .IN3(n115), .IN4(n131), .IN5(N109), 
        .IN6(n109), .Q(Sum[2]) );
  AO222X1 U260 ( .IN1(N130), .IN2(n108), .IN3(n132), .IN4(n133), .IN5(N129), 
        .IN6(n109), .Q(Sum[22]) );
  NAND2X0 U261 ( .IN1(n134), .IN2(n135), .QN(n133) );
  OA221X1 U262 ( .IN1(n136), .IN2(n137), .IN3(n138), .IN4(n139), .IN5(n140), 
        .Q(n135) );
  OA22X1 U263 ( .IN1(n141), .IN2(n142), .IN3(n143), .IN4(n144), .Q(n140) );
  OA222X1 U264 ( .IN1(n145), .IN2(n125), .IN3(n146), .IN4(n147), .IN5(n148), 
        .IN6(n149), .Q(n134) );
  MUX21X1 U265 ( .IN1(n150), .IN2(n151), .S(N469), .Q(n147) );
  NAND2X0 U266 ( .IN1(n152), .IN2(n146), .QN(n125) );
  MUX21X1 U267 ( .IN1(n153), .IN2(n131), .S(N469), .Q(n152) );
  AO222X1 U268 ( .IN1(N129), .IN2(n108), .IN3(n132), .IN4(n154), .IN5(N128), 
        .IN6(n109), .Q(Sum[21]) );
  NAND2X0 U269 ( .IN1(n155), .IN2(n156), .QN(n154) );
  OA221X1 U270 ( .IN1(n138), .IN2(n137), .IN3(n143), .IN4(n139), .IN5(n157), 
        .Q(n156) );
  OA22X1 U271 ( .IN1(n158), .IN2(n142), .IN3(n141), .IN4(n144), .Q(n157) );
  OA222X1 U272 ( .IN1(n145), .IN2(n127), .IN3(n146), .IN4(n159), .IN5(n160), 
        .IN6(n149), .Q(n155) );
  MUX21X1 U273 ( .IN1(n161), .IN2(n162), .S(N469), .Q(n159) );
  NAND2X0 U274 ( .IN1(n163), .IN2(n146), .QN(n127) );
  MUX21X1 U275 ( .IN1(n112), .IN2(n114), .S(N469), .Q(n163) );
  AO222X1 U276 ( .IN1(N128), .IN2(n108), .IN3(n132), .IN4(n164), .IN5(N127), 
        .IN6(n109), .Q(Sum[20]) );
  NAND2X0 U277 ( .IN1(n165), .IN2(n166), .QN(n164) );
  OA221X1 U278 ( .IN1(n143), .IN2(n137), .IN3(n141), .IN4(n139), .IN5(n167), 
        .Q(n166) );
  OA22X1 U279 ( .IN1(n168), .IN2(n142), .IN3(n158), .IN4(n144), .Q(n167) );
  OA222X1 U280 ( .IN1(n169), .IN2(n149), .IN3(n145), .IN4(n170), .IN5(n146), 
        .IN6(n171), .Q(n165) );
  MUX21X1 U281 ( .IN1(n172), .IN2(n173), .S(N469), .Q(n171) );
  AO222X1 U282 ( .IN1(N109), .IN2(n108), .IN3(n115), .IN4(n114), .IN5(N108), 
        .IN6(n109), .Q(Sum[1]) );
  AO222X1 U283 ( .IN1(N127), .IN2(n108), .IN3(n132), .IN4(n174), .IN5(N126), 
        .IN6(n109), .Q(Sum[19]) );
  AO221X1 U284 ( .IN1(n175), .IN2(n176), .IN3(n177), .IN4(n149), .IN5(n178), 
        .Q(n174) );
  MUX21X1 U285 ( .IN1(n179), .IN2(n180), .S(N469), .Q(n178) );
  AND2X1 U286 ( .IN1(N471), .IN2(n129), .Q(n179) );
  AO221X1 U287 ( .IN1(n181), .IN2(n182), .IN3(n183), .IN4(n184), .IN5(n185), 
        .Q(n177) );
  AO22X1 U288 ( .IN1(n186), .IN2(n187), .IN3(n188), .IN4(n189), .Q(n185) );
  OR2X1 U289 ( .IN1(n190), .IN2(n149), .Q(n176) );
  AND2X1 U290 ( .IN1(N415), .IN2(n191), .Q(n175) );
  NAND3X0 U291 ( .IN1(n192), .IN2(n193), .IN3(n194), .QN(Sum[18]) );
  OA222X1 U292 ( .IN1(n195), .IN2(n196), .IN3(n148), .IN4(n197), .IN5(n198), 
        .IN6(n199), .Q(n194) );
  INVX0 U293 ( .IN1(N126), .QN(n199) );
  AOI221X1 U294 ( .IN1(n181), .IN2(n187), .IN3(n183), .IN4(n182), .IN5(n200), 
        .QN(n148) );
  AO22X1 U295 ( .IN1(n186), .IN2(n189), .IN3(n188), .IN4(n201), .Q(n200) );
  OA22X1 U296 ( .IN1(n202), .IN2(n203), .IN3(n151), .IN4(n204), .Q(n193) );
  OA22X1 U297 ( .IN1(n205), .IN2(n206), .IN3(n150), .IN4(n207), .Q(n192) );
  NAND3X0 U298 ( .IN1(n208), .IN2(n209), .IN3(n210), .QN(Sum[17]) );
  OA222X1 U299 ( .IN1(n195), .IN2(n211), .IN3(n160), .IN4(n197), .IN5(n198), 
        .IN6(n196), .Q(n210) );
  INVX0 U300 ( .IN1(N125), .QN(n196) );
  AOI221X1 U301 ( .IN1(n181), .IN2(n189), .IN3(n183), .IN4(n187), .IN5(n212), 
        .QN(n160) );
  AO22X1 U302 ( .IN1(n186), .IN2(n201), .IN3(n188), .IN4(n213), .Q(n212) );
  OA22X1 U303 ( .IN1(n214), .IN2(n203), .IN3(n162), .IN4(n204), .Q(n209) );
  OA22X1 U304 ( .IN1(n215), .IN2(n206), .IN3(n161), .IN4(n207), .Q(n208) );
  NAND3X0 U305 ( .IN1(n216), .IN2(n217), .IN3(n218), .QN(Sum[16]) );
  OA222X1 U306 ( .IN1(n195), .IN2(n219), .IN3(n169), .IN4(n197), .IN5(n198), 
        .IN6(n211), .Q(n218) );
  INVX0 U307 ( .IN1(N124), .QN(n211) );
  AOI221X1 U308 ( .IN1(n181), .IN2(n201), .IN3(n183), .IN4(n189), .IN5(n220), 
        .QN(n169) );
  AO22X1 U309 ( .IN1(n186), .IN2(n213), .IN3(n188), .IN4(n221), .Q(n220) );
  INVX0 U310 ( .IN1(N123), .QN(n219) );
  OA22X1 U311 ( .IN1(n222), .IN2(n206), .IN3(n223), .IN4(n203), .Q(n217) );
  NAND3X0 U312 ( .IN1(N471), .IN2(n149), .IN3(n132), .QN(n206) );
  OA22X1 U313 ( .IN1(n173), .IN2(n204), .IN3(n172), .IN4(n207), .Q(n216) );
  INVX0 U314 ( .IN1(n224), .QN(n172) );
  INVX0 U315 ( .IN1(n120), .QN(n173) );
  AO221X1 U316 ( .IN1(N123), .IN2(n108), .IN3(N122), .IN4(n109), .IN5(n225), 
        .Q(Sum[15]) );
  AO222X1 U317 ( .IN1(n115), .IN2(n180), .IN3(n111), .IN4(n191), .IN5(n226), 
        .IN6(n122), .Q(n225) );
  MUX21X1 U318 ( .IN1(n129), .IN2(n190), .S(n149), .Q(n122) );
  AO221X1 U319 ( .IN1(n181), .IN2(n213), .IN3(n183), .IN4(n201), .IN5(n227), 
        .Q(n180) );
  AO22X1 U320 ( .IN1(n186), .IN2(n221), .IN3(n188), .IN4(n228), .Q(n227) );
  NAND2X0 U321 ( .IN1(n229), .IN2(n230), .QN(Sum[14]) );
  OA222X1 U322 ( .IN1(n151), .IN2(n207), .IN3(n205), .IN4(n203), .IN5(n202), 
        .IN6(n204), .Q(n230) );
  INVX0 U323 ( .IN1(n153), .QN(n202) );
  INVX0 U324 ( .IN1(n131), .QN(n205) );
  INVX0 U325 ( .IN1(n231), .QN(n151) );
  OA222X1 U326 ( .IN1(n195), .IN2(n232), .IN3(n150), .IN4(n197), .IN5(n198), 
        .IN6(n233), .Q(n229) );
  INVX0 U327 ( .IN1(N122), .QN(n233) );
  AOI221X1 U328 ( .IN1(n181), .IN2(n221), .IN3(n183), .IN4(n213), .IN5(n234), 
        .QN(n150) );
  AO22X1 U329 ( .IN1(n186), .IN2(n228), .IN3(n188), .IN4(n235), .Q(n234) );
  NAND2X0 U330 ( .IN1(n236), .IN2(n237), .QN(Sum[13]) );
  OA222X1 U331 ( .IN1(n162), .IN2(n207), .IN3(n215), .IN4(n203), .IN5(n214), 
        .IN6(n204), .Q(n237) );
  INVX0 U332 ( .IN1(n112), .QN(n214) );
  AO221X1 U333 ( .IN1(n181), .IN2(n238), .IN3(n183), .IN4(n239), .IN5(n240), 
        .Q(n112) );
  AO22X1 U334 ( .IN1(n186), .IN2(n241), .IN3(n188), .IN4(n242), .Q(n240) );
  NAND2X0 U335 ( .IN1(N469), .IN2(n226), .QN(n203) );
  INVX0 U336 ( .IN1(n114), .QN(n215) );
  AO22X1 U337 ( .IN1(n183), .IN2(n243), .IN3(n181), .IN4(n244), .Q(n114) );
  INVX0 U338 ( .IN1(n116), .QN(n162) );
  AO221X1 U339 ( .IN1(n181), .IN2(n245), .IN3(n183), .IN4(n246), .IN5(n247), 
        .Q(n116) );
  AO22X1 U340 ( .IN1(n186), .IN2(n248), .IN3(n188), .IN4(n249), .Q(n247) );
  OA222X1 U341 ( .IN1(n195), .IN2(n250), .IN3(n161), .IN4(n197), .IN5(n198), 
        .IN6(n232), .Q(n236) );
  INVX0 U342 ( .IN1(N121), .QN(n232) );
  AOI221X1 U343 ( .IN1(n181), .IN2(n228), .IN3(n183), .IN4(n221), .IN5(n251), 
        .QN(n161) );
  AO22X1 U344 ( .IN1(n186), .IN2(n235), .IN3(n188), .IN4(n252), .Q(n251) );
  INVX0 U345 ( .IN1(N120), .QN(n250) );
  AO221X1 U346 ( .IN1(N120), .IN2(n108), .IN3(N119), .IN4(n109), .IN5(n253), 
        .Q(Sum[12]) );
  AO222X1 U347 ( .IN1(n115), .IN2(n224), .IN3(n111), .IN4(n120), .IN5(n226), 
        .IN6(n128), .Q(n253) );
  INVX0 U348 ( .IN1(n170), .QN(n128) );
  MUX21X1 U349 ( .IN1(n223), .IN2(n222), .S(N469), .Q(n170) );
  INVX0 U350 ( .IN1(n118), .QN(n223) );
  AO221X1 U351 ( .IN1(n181), .IN2(n241), .IN3(n183), .IN4(n238), .IN5(n254), 
        .Q(n118) );
  AO22X1 U352 ( .IN1(n186), .IN2(n242), .IN3(n188), .IN4(n243), .Q(n254) );
  AO221X1 U353 ( .IN1(n181), .IN2(n248), .IN3(n183), .IN4(n245), .IN5(n255), 
        .Q(n120) );
  AO22X1 U354 ( .IN1(n186), .IN2(n249), .IN3(n188), .IN4(n239), .Q(n255) );
  AO221X1 U355 ( .IN1(n181), .IN2(n235), .IN3(n183), .IN4(n228), .IN5(n256), 
        .Q(n224) );
  AO22X1 U356 ( .IN1(n186), .IN2(n252), .IN3(n188), .IN4(n246), .Q(n256) );
  AO221X1 U357 ( .IN1(N119), .IN2(n108), .IN3(N118), .IN4(n109), .IN5(n257), 
        .Q(Sum[11]) );
  AO222X1 U358 ( .IN1(n111), .IN2(n190), .IN3(n113), .IN4(n129), .IN5(n115), 
        .IN6(n191), .Q(n257) );
  AO221X1 U359 ( .IN1(n181), .IN2(n252), .IN3(n183), .IN4(n235), .IN5(n258), 
        .Q(n191) );
  AO22X1 U360 ( .IN1(n186), .IN2(n246), .IN3(n188), .IN4(n245), .Q(n258) );
  AO221X1 U361 ( .IN1(n181), .IN2(n242), .IN3(n183), .IN4(n241), .IN5(n259), 
        .Q(n129) );
  AO22X1 U362 ( .IN1(n186), .IN2(n243), .IN3(n188), .IN4(n244), .Q(n259) );
  AO221X1 U363 ( .IN1(n181), .IN2(n249), .IN3(n183), .IN4(n248), .IN5(n260), 
        .Q(n190) );
  AO22X1 U364 ( .IN1(n186), .IN2(n239), .IN3(n188), .IN4(n238), .Q(n260) );
  AO221X1 U365 ( .IN1(N118), .IN2(n108), .IN3(n109), .IN4(N117), .IN5(n261), 
        .Q(Sum[10]) );
  AO222X1 U366 ( .IN1(n111), .IN2(n153), .IN3(n113), .IN4(n131), .IN5(n115), 
        .IN6(n231), .Q(n261) );
  AO221X1 U367 ( .IN1(n181), .IN2(n246), .IN3(n183), .IN4(n252), .IN5(n262), 
        .Q(n231) );
  AO22X1 U368 ( .IN1(n186), .IN2(n245), .IN3(n188), .IN4(n248), .Q(n262) );
  AO222X1 U369 ( .IN1(n181), .IN2(n243), .IN3(n186), .IN4(n244), .IN5(n183), 
        .IN6(n242), .Q(n131) );
  INVX0 U370 ( .IN1(n204), .QN(n113) );
  NAND2X0 U371 ( .IN1(n226), .IN2(n149), .QN(n204) );
  AND2X1 U372 ( .IN1(n124), .IN2(N415), .Q(n226) );
  AO221X1 U373 ( .IN1(n181), .IN2(n239), .IN3(n183), .IN4(n249), .IN5(n263), 
        .Q(n153) );
  AO22X1 U374 ( .IN1(n186), .IN2(n238), .IN3(n188), .IN4(n241), .Q(n263) );
  INVX0 U375 ( .IN1(n142), .QN(n188) );
  NAND2X0 U376 ( .IN1(N468), .IN2(N467), .QN(n142) );
  INVX0 U377 ( .IN1(n144), .QN(n186) );
  NAND2X0 U378 ( .IN1(N468), .IN2(n264), .QN(n144) );
  INVX0 U379 ( .IN1(n139), .QN(n181) );
  NAND2X0 U380 ( .IN1(N467), .IN2(n265), .QN(n139) );
  INVX0 U381 ( .IN1(n207), .QN(n111) );
  NAND2X0 U382 ( .IN1(n121), .IN2(N469), .QN(n207) );
  AO222X1 U383 ( .IN1(N108), .IN2(n108), .IN3(n119), .IN4(n115), .IN5(N107), 
        .IN6(n109), .Q(Sum[0]) );
  INVX0 U384 ( .IN1(n195), .QN(n109) );
  NAND2X0 U385 ( .IN1(n266), .IN2(n267), .QN(n195) );
  INVX0 U386 ( .IN1(n197), .QN(n115) );
  NAND2X0 U387 ( .IN1(n121), .IN2(n149), .QN(n197) );
  AND2X1 U388 ( .IN1(n124), .IN2(n146), .Q(n121) );
  AND2X1 U389 ( .IN1(n132), .IN2(n145), .Q(n124) );
  INVX0 U390 ( .IN1(N471), .QN(n145) );
  NOR2X0 U391 ( .IN1(n268), .IN2(N514), .QN(n132) );
  INVX0 U392 ( .IN1(n222), .QN(n119) );
  NAND2X0 U393 ( .IN1(n183), .IN2(n244), .QN(n222) );
  INVX0 U394 ( .IN1(n137), .QN(n183) );
  NAND2X0 U395 ( .IN1(n265), .IN2(n264), .QN(n137) );
  INVX0 U396 ( .IN1(n198), .QN(n108) );
  NAND2X0 U397 ( .IN1(n269), .IN2(n267), .QN(n198) );
  INVX0 U398 ( .IN1(n267), .QN(N514) );
  NAND4X0 U399 ( .IN1(Sum[23]), .IN2(Sum[24]), .IN3(n270), .IN4(n271), .QN(
        n267) );
  AND4X1 U400 ( .IN1(Sum[30]), .IN2(Sum[29]), .IN3(Sum[28]), .IN4(Sum[27]), 
        .Q(n271) );
  AO222X1 U401 ( .IN1(N137), .IN2(n269), .IN3(n266), .IN4(N100), .IN5(N479), 
        .IN6(n272), .Q(Sum[27]) );
  AO222X1 U402 ( .IN1(N138), .IN2(n269), .IN3(n266), .IN4(N101), .IN5(N480), 
        .IN6(n272), .Q(Sum[28]) );
  AO222X1 U403 ( .IN1(N139), .IN2(n269), .IN3(n266), .IN4(N102), .IN5(N481), 
        .IN6(n272), .Q(Sum[29]) );
  AO222X1 U404 ( .IN1(N140), .IN2(n269), .IN3(n266), .IN4(N103), .IN5(N482), 
        .IN6(n272), .Q(Sum[30]) );
  AND2X1 U405 ( .IN1(Sum[26]), .IN2(Sum[25]), .Q(n270) );
  AO222X1 U406 ( .IN1(N135), .IN2(n269), .IN3(n266), .IN4(N98), .IN5(N477), 
        .IN6(n272), .Q(Sum[25]) );
  MUX21X1 U407 ( .IN1(B[25]), .IN2(A[25]), .S(n273), .Q(N98) );
  AO222X1 U408 ( .IN1(N136), .IN2(n269), .IN3(n266), .IN4(N99), .IN5(N478), 
        .IN6(n272), .Q(Sum[26]) );
  MUX21X1 U409 ( .IN1(B[26]), .IN2(A[26]), .S(n273), .Q(N99) );
  AO222X1 U410 ( .IN1(N134), .IN2(n269), .IN3(n266), .IN4(N97), .IN5(N476), 
        .IN6(n272), .Q(Sum[24]) );
  MUX21X1 U411 ( .IN1(B[24]), .IN2(A[24]), .S(n273), .Q(N97) );
  AO222X1 U412 ( .IN1(N133), .IN2(n269), .IN3(n266), .IN4(N96), .IN5(N475), 
        .IN6(n272), .Q(Sum[23]) );
  MUX21X1 U413 ( .IN1(B[23]), .IN2(A[23]), .S(n273), .Q(N96) );
  NOR2X0 U414 ( .IN1(n272), .IN2(N131), .QN(n266) );
  INVX0 U415 ( .IN1(n268), .QN(n272) );
  AND2X1 U416 ( .IN1(N131), .IN2(n268), .Q(n269) );
  NOR2X0 U417 ( .IN1(n274), .IN2(n268), .QN(N506) );
  XNOR2X1 U418 ( .IN1(A[31]), .IN2(B[31]), .Q(n268) );
  AO21X1 U419 ( .IN1(n275), .IN2(n146), .IN3(N474), .Q(N471) );
  NOR2X0 U420 ( .IN1(n146), .IN2(n275), .QN(N474) );
  INVX0 U421 ( .IN1(N415), .QN(n146) );
  AOI21X1 U422 ( .IN1(n274), .IN2(MSB[4]), .IN3(N379), .QN(n275) );
  INVX0 U423 ( .IN1(n149), .QN(N469) );
  AO21X1 U424 ( .IN1(n274), .IN2(MSB[2]), .IN3(N377), .Q(n149) );
  INVX0 U425 ( .IN1(n265), .QN(N468) );
  AO21X1 U426 ( .IN1(n274), .IN2(MSB[1]), .IN3(N376), .Q(n265) );
  INVX0 U427 ( .IN1(n264), .QN(N467) );
  AO21X1 U428 ( .IN1(n274), .IN2(MSB[0]), .IN3(N375), .Q(n264) );
  AO21X1 U429 ( .IN1(n274), .IN2(MSB[3]), .IN3(N378), .Q(N415) );
  NOR4X0 U430 ( .IN1(n242), .IN2(n276), .IN3(n277), .IN4(n278), .QN(n274) );
  OR4X1 U431 ( .IN1(N379), .IN2(n244), .IN3(n241), .IN4(n243), .Q(n278) );
  MUX21X1 U432 ( .IN1(N175), .IN2(N199), .S(n130), .Q(n244) );
  INVX0 U433 ( .IN1(n279), .QN(n276) );
  NOR2X0 U434 ( .IN1(n279), .IN2(N379), .QN(N378) );
  OR2X1 U435 ( .IN1(n280), .IN2(n281), .Q(N379) );
  NOR2X0 U436 ( .IN1(n282), .IN2(n283), .QN(n279) );
  AO21X1 U437 ( .IN1(n284), .IN2(n285), .IN3(n280), .Q(N377) );
  NAND4X0 U438 ( .IN1(n138), .IN2(n143), .IN3(n136), .IN4(n286), .QN(n280) );
  AO21X1 U439 ( .IN1(n287), .IN2(n277), .IN3(n282), .Q(n285) );
  NAND4X0 U440 ( .IN1(n288), .IN2(n289), .IN3(n290), .IN4(n291), .QN(n282) );
  NAND4X0 U441 ( .IN1(n292), .IN2(n293), .IN3(n294), .IN4(n295), .QN(n277) );
  INVX0 U442 ( .IN1(n283), .QN(n287) );
  NAND4X0 U443 ( .IN1(n296), .IN2(n297), .IN3(n298), .IN4(n299), .QN(n283) );
  INVX0 U444 ( .IN1(n281), .QN(n284) );
  NAND4X0 U445 ( .IN1(n141), .IN2(n168), .IN3(n158), .IN4(n300), .QN(n281) );
  NAND3X0 U446 ( .IN1(n286), .IN2(n301), .IN3(n136), .QN(N376) );
  INVX0 U447 ( .IN1(n302), .QN(n136) );
  NAND3X0 U448 ( .IN1(n143), .IN2(n303), .IN3(n138), .QN(n301) );
  NAND3X0 U449 ( .IN1(n158), .IN2(n304), .IN3(n141), .QN(n303) );
  NAND3X0 U450 ( .IN1(n300), .IN2(n305), .IN3(n168), .QN(n304) );
  NAND3X0 U451 ( .IN1(n290), .IN2(n306), .IN3(n288), .QN(n305) );
  NAND3X0 U452 ( .IN1(n291), .IN2(n307), .IN3(n289), .QN(n306) );
  NAND3X0 U453 ( .IN1(n298), .IN2(n308), .IN3(n296), .QN(n307) );
  NAND3X0 U454 ( .IN1(n299), .IN2(n309), .IN3(n297), .QN(n308) );
  NAND3X0 U455 ( .IN1(n294), .IN2(n310), .IN3(n292), .QN(n309) );
  NAND3X0 U456 ( .IN1(n295), .IN2(n311), .IN3(n293), .QN(n310) );
  OR2X1 U457 ( .IN1(n242), .IN2(n241), .Q(n311) );
  INVX0 U458 ( .IN1(n238), .QN(n295) );
  INVX0 U459 ( .IN1(n249), .QN(n294) );
  INVX0 U460 ( .IN1(n245), .QN(n299) );
  INVX0 U461 ( .IN1(n252), .QN(n298) );
  INVX0 U462 ( .IN1(n228), .QN(n291) );
  INVX0 U463 ( .IN1(n213), .QN(n290) );
  INVX0 U464 ( .IN1(n189), .QN(n300) );
  INVX0 U465 ( .IN1(n182), .QN(n158) );
  INVX0 U466 ( .IN1(n312), .QN(n143) );
  OAI21X1 U467 ( .IN1(n313), .IN2(n302), .IN3(n286), .QN(N375) );
  INVX0 U468 ( .IN1(n314), .QN(n286) );
  MUX21X1 U469 ( .IN1(N198), .IN2(N222), .S(n130), .Q(n314) );
  MUX21X1 U470 ( .IN1(N197), .IN2(N221), .S(n130), .Q(n302) );
  OA21X1 U471 ( .IN1(n315), .IN2(n312), .IN3(n138), .Q(n313) );
  INVX0 U472 ( .IN1(n316), .QN(n138) );
  MUX21X1 U473 ( .IN1(N196), .IN2(N220), .S(n130), .Q(n316) );
  MUX21X1 U474 ( .IN1(N195), .IN2(N219), .S(n130), .Q(n312) );
  OA21X1 U475 ( .IN1(n317), .IN2(n182), .IN3(n141), .Q(n315) );
  INVX0 U476 ( .IN1(n184), .QN(n141) );
  MUX21X1 U477 ( .IN1(N194), .IN2(N218), .S(n130), .Q(n184) );
  MUX21X1 U478 ( .IN1(N193), .IN2(N217), .S(n130), .Q(n182) );
  OA21X1 U479 ( .IN1(n318), .IN2(n189), .IN3(n168), .Q(n317) );
  INVX0 U480 ( .IN1(n187), .QN(n168) );
  MUX21X1 U481 ( .IN1(N192), .IN2(N216), .S(n130), .Q(n187) );
  MUX21X1 U482 ( .IN1(N191), .IN2(N215), .S(n130), .Q(n189) );
  OA21X1 U483 ( .IN1(n319), .IN2(n213), .IN3(n288), .Q(n318) );
  INVX0 U484 ( .IN1(n201), .QN(n288) );
  MUX21X1 U485 ( .IN1(N190), .IN2(N214), .S(n130), .Q(n201) );
  MUX21X1 U486 ( .IN1(N189), .IN2(N213), .S(n130), .Q(n213) );
  OA21X1 U487 ( .IN1(n320), .IN2(n228), .IN3(n289), .Q(n319) );
  INVX0 U488 ( .IN1(n221), .QN(n289) );
  MUX21X1 U489 ( .IN1(N188), .IN2(N212), .S(n130), .Q(n221) );
  MUX21X1 U490 ( .IN1(N187), .IN2(N211), .S(n130), .Q(n228) );
  OA21X1 U491 ( .IN1(n321), .IN2(n252), .IN3(n296), .Q(n320) );
  INVX0 U492 ( .IN1(n235), .QN(n296) );
  MUX21X1 U493 ( .IN1(N186), .IN2(N210), .S(n130), .Q(n235) );
  MUX21X1 U494 ( .IN1(N185), .IN2(N209), .S(n130), .Q(n252) );
  OA21X1 U495 ( .IN1(n322), .IN2(n245), .IN3(n297), .Q(n321) );
  INVX0 U496 ( .IN1(n246), .QN(n297) );
  MUX21X1 U497 ( .IN1(N184), .IN2(N208), .S(n130), .Q(n246) );
  MUX21X1 U498 ( .IN1(N183), .IN2(N207), .S(n130), .Q(n245) );
  OA21X1 U499 ( .IN1(n323), .IN2(n249), .IN3(n292), .Q(n322) );
  INVX0 U500 ( .IN1(n248), .QN(n292) );
  MUX21X1 U501 ( .IN1(N182), .IN2(N206), .S(n130), .Q(n248) );
  MUX21X1 U502 ( .IN1(N181), .IN2(N205), .S(n130), .Q(n249) );
  OA21X1 U503 ( .IN1(n324), .IN2(n238), .IN3(n293), .Q(n323) );
  INVX0 U504 ( .IN1(n239), .QN(n293) );
  MUX21X1 U505 ( .IN1(N180), .IN2(N204), .S(n130), .Q(n239) );
  MUX21X1 U506 ( .IN1(N179), .IN2(N203), .S(n130), .Q(n238) );
  AOI21X1 U507 ( .IN1(n243), .IN2(n325), .IN3(n241), .QN(n324) );
  MUX21X1 U508 ( .IN1(N178), .IN2(N202), .S(n130), .Q(n241) );
  INVX0 U509 ( .IN1(n242), .QN(n325) );
  MUX21X1 U510 ( .IN1(N177), .IN2(N201), .S(n130), .Q(n242) );
  MUX21X1 U511 ( .IN1(N176), .IN2(N200), .S(n130), .Q(n243) );
  AOI22X1 U512 ( .IN1(MA[23]), .IN2(n326), .IN3(n327), .IN4(n328), .QN(n130)
         );
  OR2X1 U513 ( .IN1(n326), .IN2(MA[23]), .Q(n328) );
  INVX0 U514 ( .IN1(MB[23]), .QN(n327) );
  AO21X1 U515 ( .IN1(MA[22]), .IN2(n329), .IN3(n330), .Q(n326) );
  OA221X1 U516 ( .IN1(MA[21]), .IN2(n331), .IN3(MA[22]), .IN4(n329), .IN5(n332), .Q(n330) );
  AO221X1 U517 ( .IN1(MA[20]), .IN2(n333), .IN3(MA[21]), .IN4(n331), .IN5(n334), .Q(n332) );
  OA221X1 U518 ( .IN1(MA[19]), .IN2(n335), .IN3(MA[20]), .IN4(n333), .IN5(n336), .Q(n334) );
  AO221X1 U519 ( .IN1(MA[18]), .IN2(n337), .IN3(MA[19]), .IN4(n335), .IN5(n338), .Q(n336) );
  OA221X1 U520 ( .IN1(MA[17]), .IN2(n339), .IN3(MA[18]), .IN4(n337), .IN5(n340), .Q(n338) );
  AO221X1 U521 ( .IN1(MA[16]), .IN2(n341), .IN3(MA[17]), .IN4(n339), .IN5(n342), .Q(n340) );
  OA221X1 U522 ( .IN1(MA[15]), .IN2(n343), .IN3(MA[16]), .IN4(n341), .IN5(n344), .Q(n342) );
  AO221X1 U523 ( .IN1(MA[14]), .IN2(n345), .IN3(MA[15]), .IN4(n343), .IN5(n346), .Q(n344) );
  OA221X1 U524 ( .IN1(MA[13]), .IN2(n347), .IN3(MA[14]), .IN4(n345), .IN5(n348), .Q(n346) );
  AO221X1 U525 ( .IN1(MA[12]), .IN2(n349), .IN3(MA[13]), .IN4(n347), .IN5(n350), .Q(n348) );
  OA221X1 U526 ( .IN1(MA[11]), .IN2(n351), .IN3(MA[12]), .IN4(n349), .IN5(n352), .Q(n350) );
  AO221X1 U527 ( .IN1(MA[10]), .IN2(n353), .IN3(MA[11]), .IN4(n351), .IN5(n354), .Q(n352) );
  OA221X1 U528 ( .IN1(MA[9]), .IN2(n355), .IN3(MA[10]), .IN4(n353), .IN5(n356), 
        .Q(n354) );
  AO221X1 U529 ( .IN1(MA[8]), .IN2(n357), .IN3(MA[9]), .IN4(n355), .IN5(n358), 
        .Q(n356) );
  OA221X1 U530 ( .IN1(MA[7]), .IN2(n359), .IN3(MA[8]), .IN4(n357), .IN5(n360), 
        .Q(n358) );
  AO221X1 U531 ( .IN1(MA[6]), .IN2(n361), .IN3(MA[7]), .IN4(n359), .IN5(n362), 
        .Q(n360) );
  OA221X1 U532 ( .IN1(MA[5]), .IN2(n363), .IN3(MA[6]), .IN4(n361), .IN5(n364), 
        .Q(n362) );
  AO221X1 U533 ( .IN1(MA[4]), .IN2(n365), .IN3(MA[5]), .IN4(n363), .IN5(n366), 
        .Q(n364) );
  OA221X1 U534 ( .IN1(MA[3]), .IN2(n367), .IN3(MA[4]), .IN4(n365), .IN5(n368), 
        .Q(n366) );
  AO222X1 U535 ( .IN1(n369), .IN2(MA[2]), .IN3(n370), .IN4(n371), .IN5(MA[3]), 
        .IN6(n367), .Q(n368) );
  OR2X1 U536 ( .IN1(MA[2]), .IN2(n369), .Q(n371) );
  INVX0 U537 ( .IN1(MB[2]), .QN(n370) );
  AOI22X1 U538 ( .IN1(MB[1]), .IN2(n372), .IN3(n373), .IN4(n374), .QN(n369) );
  INVX0 U539 ( .IN1(MA[0]), .QN(n374) );
  OA21X1 U540 ( .IN1(MB[1]), .IN2(n372), .IN3(MB[0]), .Q(n373) );
  INVX0 U541 ( .IN1(MA[1]), .QN(n372) );
  INVX0 U542 ( .IN1(MB[3]), .QN(n367) );
  INVX0 U543 ( .IN1(MB[4]), .QN(n365) );
  INVX0 U544 ( .IN1(MB[5]), .QN(n363) );
  INVX0 U545 ( .IN1(MB[6]), .QN(n361) );
  INVX0 U546 ( .IN1(MB[7]), .QN(n359) );
  INVX0 U547 ( .IN1(MB[8]), .QN(n357) );
  INVX0 U548 ( .IN1(MB[9]), .QN(n355) );
  INVX0 U549 ( .IN1(MB[10]), .QN(n353) );
  INVX0 U550 ( .IN1(MB[11]), .QN(n351) );
  INVX0 U551 ( .IN1(MB[12]), .QN(n349) );
  INVX0 U552 ( .IN1(MB[13]), .QN(n347) );
  INVX0 U553 ( .IN1(MB[14]), .QN(n345) );
  INVX0 U554 ( .IN1(MB[15]), .QN(n343) );
  INVX0 U555 ( .IN1(MB[16]), .QN(n341) );
  INVX0 U556 ( .IN1(MB[17]), .QN(n339) );
  INVX0 U557 ( .IN1(MB[18]), .QN(n337) );
  INVX0 U558 ( .IN1(MB[19]), .QN(n335) );
  INVX0 U559 ( .IN1(MB[20]), .QN(n333) );
  INVX0 U560 ( .IN1(MB[21]), .QN(n331) );
  INVX0 U561 ( .IN1(MB[22]), .QN(n329) );
  OR2X1 U562 ( .IN1(A[30]), .IN2(B[30]), .Q(N103) );
  MUX21X1 U563 ( .IN1(B[29]), .IN2(A[29]), .S(n273), .Q(N102) );
  MUX21X1 U564 ( .IN1(B[28]), .IN2(A[28]), .S(n273), .Q(N101) );
  MUX21X1 U565 ( .IN1(B[27]), .IN2(A[27]), .S(n273), .Q(N100) );
  MUX21X1 U566 ( .IN1(B[9]), .IN2(N49), .S(n273), .Q(MB[9]) );
  MUX21X1 U567 ( .IN1(B[8]), .IN2(N48), .S(n273), .Q(MB[8]) );
  MUX21X1 U568 ( .IN1(B[7]), .IN2(N47), .S(n273), .Q(MB[7]) );
  MUX21X1 U569 ( .IN1(B[6]), .IN2(N46), .S(n273), .Q(MB[6]) );
  MUX21X1 U570 ( .IN1(B[5]), .IN2(N45), .S(n273), .Q(MB[5]) );
  MUX21X1 U571 ( .IN1(B[4]), .IN2(N44), .S(n273), .Q(MB[4]) );
  MUX21X1 U572 ( .IN1(B[3]), .IN2(N43), .S(n273), .Q(MB[3]) );
  MUX21X1 U573 ( .IN1(B[2]), .IN2(N42), .S(n273), .Q(MB[2]) );
  MUX21X1 U574 ( .IN1(IBB), .IN2(N63), .S(n273), .Q(MB[23]) );
  MUX21X1 U575 ( .IN1(B[22]), .IN2(N62), .S(n273), .Q(MB[22]) );
  MUX21X1 U576 ( .IN1(B[21]), .IN2(N61), .S(n273), .Q(MB[21]) );
  MUX21X1 U577 ( .IN1(B[20]), .IN2(N60), .S(n273), .Q(MB[20]) );
  MUX21X1 U578 ( .IN1(B[1]), .IN2(N41), .S(n273), .Q(MB[1]) );
  MUX21X1 U579 ( .IN1(B[19]), .IN2(N59), .S(n273), .Q(MB[19]) );
  MUX21X1 U580 ( .IN1(B[18]), .IN2(N58), .S(n273), .Q(MB[18]) );
  MUX21X1 U581 ( .IN1(B[17]), .IN2(N57), .S(n273), .Q(MB[17]) );
  MUX21X1 U582 ( .IN1(B[16]), .IN2(N56), .S(n273), .Q(MB[16]) );
  MUX21X1 U583 ( .IN1(B[15]), .IN2(N55), .S(n273), .Q(MB[15]) );
  MUX21X1 U584 ( .IN1(B[14]), .IN2(N54), .S(n273), .Q(MB[14]) );
  MUX21X1 U585 ( .IN1(B[13]), .IN2(N53), .S(n273), .Q(MB[13]) );
  MUX21X1 U586 ( .IN1(B[12]), .IN2(N52), .S(n273), .Q(MB[12]) );
  MUX21X1 U587 ( .IN1(B[11]), .IN2(N51), .S(n273), .Q(MB[11]) );
  MUX21X1 U588 ( .IN1(B[10]), .IN2(N50), .S(n273), .Q(MB[10]) );
  MUX21X1 U589 ( .IN1(B[0]), .IN2(N40), .S(n273), .Q(MB[0]) );
  MUX21X1 U590 ( .IN1(N81), .IN2(A[9]), .S(n273), .Q(MA[9]) );
  MUX21X1 U591 ( .IN1(N80), .IN2(A[8]), .S(n273), .Q(MA[8]) );
  MUX21X1 U592 ( .IN1(N79), .IN2(A[7]), .S(n273), .Q(MA[7]) );
  MUX21X1 U593 ( .IN1(N78), .IN2(A[6]), .S(n273), .Q(MA[6]) );
  MUX21X1 U594 ( .IN1(N77), .IN2(A[5]), .S(n273), .Q(MA[5]) );
  MUX21X1 U595 ( .IN1(N76), .IN2(A[4]), .S(n273), .Q(MA[4]) );
  MUX21X1 U596 ( .IN1(N75), .IN2(A[3]), .S(n273), .Q(MA[3]) );
  MUX21X1 U597 ( .IN1(N74), .IN2(A[2]), .S(n273), .Q(MA[2]) );
  OR2X1 U598 ( .IN1(N95), .IN2(n273), .Q(MA[23]) );
  MUX21X1 U599 ( .IN1(N94), .IN2(A[22]), .S(n273), .Q(MA[22]) );
  MUX21X1 U600 ( .IN1(N93), .IN2(A[21]), .S(n273), .Q(MA[21]) );
  MUX21X1 U601 ( .IN1(N92), .IN2(A[20]), .S(n273), .Q(MA[20]) );
  MUX21X1 U602 ( .IN1(N73), .IN2(A[1]), .S(n273), .Q(MA[1]) );
  MUX21X1 U603 ( .IN1(N91), .IN2(A[19]), .S(n273), .Q(MA[19]) );
  MUX21X1 U604 ( .IN1(N90), .IN2(A[18]), .S(n273), .Q(MA[18]) );
  MUX21X1 U605 ( .IN1(N89), .IN2(A[17]), .S(n273), .Q(MA[17]) );
  MUX21X1 U606 ( .IN1(N88), .IN2(A[16]), .S(n273), .Q(MA[16]) );
  MUX21X1 U607 ( .IN1(N87), .IN2(A[15]), .S(n273), .Q(MA[15]) );
  MUX21X1 U608 ( .IN1(N86), .IN2(A[14]), .S(n273), .Q(MA[14]) );
  MUX21X1 U609 ( .IN1(N85), .IN2(A[13]), .S(n273), .Q(MA[13]) );
  MUX21X1 U610 ( .IN1(N84), .IN2(A[12]), .S(n273), .Q(MA[12]) );
  MUX21X1 U611 ( .IN1(N83), .IN2(A[11]), .S(n273), .Q(MA[11]) );
  MUX21X1 U612 ( .IN1(N82), .IN2(A[10]), .S(n273), .Q(MA[10]) );
  MUX21X1 U613 ( .IN1(N72), .IN2(A[0]), .S(n273), .Q(MA[0]) );
  OA22X1 U614 ( .IN1(A[30]), .IN2(n375), .IN3(n377), .IN4(n378), .Q(n376) );
  AND2X1 U615 ( .IN1(n379), .IN2(A[29]), .Q(n378) );
  OA221X1 U616 ( .IN1(A[28]), .IN2(n380), .IN3(A[29]), .IN4(n379), .IN5(n381), 
        .Q(n377) );
  AO221X1 U617 ( .IN1(A[27]), .IN2(n382), .IN3(A[28]), .IN4(n380), .IN5(n383), 
        .Q(n381) );
  OA221X1 U618 ( .IN1(A[26]), .IN2(n384), .IN3(A[27]), .IN4(n382), .IN5(n385), 
        .Q(n383) );
  AO222X1 U619 ( .IN1(A[25]), .IN2(n386), .IN3(n387), .IN4(n388), .IN5(A[26]), 
        .IN6(n384), .Q(n385) );
  INVX0 U620 ( .IN1(B[25]), .QN(n388) );
  OR2X1 U621 ( .IN1(n386), .IN2(A[25]), .Q(n387) );
  AO22X1 U622 ( .IN1(A[24]), .IN2(n389), .IN3(n390), .IN4(A[23]), .Q(n386) );
  OA21X1 U623 ( .IN1(A[24]), .IN2(n389), .IN3(n391), .Q(n390) );
  INVX0 U624 ( .IN1(B[26]), .QN(n384) );
  INVX0 U625 ( .IN1(B[27]), .QN(n382) );
  INVX0 U626 ( .IN1(B[29]), .QN(n379) );
  INVX0 U627 ( .IN1(B[28]), .QN(n380) );
  INVX0 U628 ( .IN1(B[30]), .QN(n375) );
  NAND4X0 U629 ( .IN1(n391), .IN2(n389), .IN3(n392), .IN4(n393), .QN(IBB) );
  NOR4X0 U630 ( .IN1(B[30]), .IN2(B[29]), .IN3(B[28]), .IN4(B[27]), .QN(n393)