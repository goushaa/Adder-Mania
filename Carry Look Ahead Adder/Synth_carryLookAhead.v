module fullAdder(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
);

    wire w1, w2, w3;
    
    // XOR gates for sum generation
    assign w1 = A ^ B;
    assign Sum = w1 ^ Cin;


    // AND gates for carry generation
    assign w2 = A & B;
    assign w3 = w1 & Cin;
    assign Cout = w3 | w2;

endmodule


module carryLookAhead ( A, B, Cin, S, Cout, overFlow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout, overFlow;
  wire   N3, n34, n35, n36, n37, n38, n39, n40, n41, n42, n43, n44, n45, n46,
         n47, n48, n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60,
         n61, n62, n63, n64, n65, n66;
  wire   [31:1] C;
  assign overFlow = N3;

  fullAdder u1  ( .A(A[0]), .B(B[0]), .Cin(1'b0), .Sum(
        S[0]) );
  fullAdder u2  ( .A(A[1]), .B(B[1]), .Cin(C[1]), .Sum(
        S[1]) );
  fullAdder u3  ( .A(A[2]), .B(B[2]), .Cin(C[2]), .Sum(
        S[2]) );
  fullAdder u4  ( .A(A[3]), .B(B[3]), .Cin(C[3]), .Sum(
        S[3]) );
  fullAdder u5  ( .A(A[4]), .B(B[4]), .Cin(C[4]), .Sum(
        S[4]) );
  fullAdder u6  ( .A(A[5]), .B(B[5]), .Cin(C[5]), .Sum(
        S[5]) );
  fullAdder u7  ( .A(A[6]), .B(B[6]), .Cin(C[6]), .Sum(
        S[6]) );
  fullAdder u8  ( .A(A[7]), .B(B[7]), .Cin(C[7]), .Sum(
        S[7]) );
  fullAdder u9  ( .A(A[8]), .B(B[8]), .Cin(C[8]), .Sum(
        S[8]) );
  fullAdder u10  ( .A(A[9]), .B(B[9]), .Cin(C[9]), .Sum(
        S[9]) );
  fullAdder u11  ( .A(A[10]), .B(B[10]), .Cin(C[10]), 
        .Sum(S[10]) );
  fullAdder u12 ( .A(A[11]), .B(B[11]), .Cin(C[11]), 
        .Sum(S[11]) );
  fullAdder u13  ( .A(A[12]), .B(B[12]), .Cin(C[12]), 
        .Sum(S[12]) );
  fullAdder u14  ( .A(A[13]), .B(B[13]), .Cin(C[13]), 
        .Sum(S[13]) );
  fullAdder u15  ( .A(A[14]), .B(B[14]), .Cin(C[14]), 
        .Sum(S[14]) );
  fullAdder u16  ( .A(A[15]), .B(B[15]), .Cin(C[15]), 
        .Sum(S[15]) );
  fullAdder u17  ( .A(A[16]), .B(B[16]), .Cin(C[16]), 
        .Sum(S[16]) );
  fullAdder u18  ( .A(A[17]), .B(B[17]), .Cin(C[17]), 
        .Sum(S[17]) );
  fullAdder u19  ( .A(A[18]), .B(B[18]), .Cin(C[18]), 
        .Sum(S[18]) );
  fullAdder u20  ( .A(A[19]), .B(B[19]), .Cin(C[19]), 
        .Sum(S[19]) );
  fullAdder u21  ( .A(A[20]), .B(B[20]), .Cin(C[20]), 
        .Sum(S[20]) );
  fullAdder u22  ( .A(A[21]), .B(B[21]), .Cin(C[21]), 
        .Sum(S[21]) );
  fullAdder u23  ( .A(A[22]), .B(B[22]), .Cin(C[22]), 
        .Sum(S[22]) );
  fullAdder u24  ( .A(A[23]), .B(B[23]), .Cin(C[23]), 
        .Sum(S[23]) );
  fullAdder u25  ( .A(A[24]), .B(B[24]), .Cin(C[24]), 
        .Sum(S[24]) );
  fullAdder u26  ( .A(A[25]), .B(B[25]), .Cin(C[25]), 
        .Sum(S[25]) );
  fullAdder u27  ( .A(A[26]), .B(B[26]), .Cin(C[26]), 
        .Sum(S[26]) );
  fullAdder u28  ( .A(A[27]), .B(B[27]), .Cin(C[27]), 
        .Sum(S[27]) );
  fullAdder u29  ( .A(A[28]), .B(B[28]), .Cin(C[28]), 
        .Sum(S[28]) );
  fullAdder u30  ( .A(A[29]), .B(B[29]), .Cin(C[29]), 
        .Sum(S[29]) );
  fullAdder u31  ( .A(A[30]), .B(B[30]), .Cin(C[30]), 
        .Sum(S[30]) );
  fullAdder u32  ( .A(A[31]), .B(B[31]), .Cin(C[31]), 
        .Sum(S[31]) );
  NOR2X0 U68 ( .IN1(n34), .IN2(n35), .QN(N3) );
  XNOR2X1 U69 ( .IN1(A[31]), .IN2(S[31]), .Q(n34) );
  AO22X1 U70 ( .IN1(A[31]), .IN2(B[31]), .IN3(n35), .IN4(C[31]), .Q(Cout) );
  XOR2X1 U71 ( .IN1(A[31]), .IN2(B[31]), .Q(n35) );
  AO22X1 U72 ( .IN1(A[30]), .IN2(C[30]), .IN3(B[30]), .IN4(n36), .Q(C[31]) );
  OR2X1 U73 ( .IN1(C[30]), .IN2(A[30]), .Q(n36) );
  AO22X1 U74 ( .IN1(A[29]), .IN2(C[29]), .IN3(B[29]), .IN4(n37), .Q(C[30]) );
  OR2X1 U75 ( .IN1(C[29]), .IN2(A[29]), .Q(n37) );
  AO22X1 U76 ( .IN1(A[28]), .IN2(C[28]), .IN3(B[28]), .IN4(n38), .Q(C[29]) );
  OR2X1 U77 ( .IN1(C[28]), .IN2(A[28]), .Q(n38) );
  AO22X1 U78 ( .IN1(A[27]), .IN2(C[27]), .IN3(B[27]), .IN4(n39), .Q(C[28]) );
  OR2X1 U79 ( .IN1(C[27]), .IN2(A[27]), .Q(n39) );
  AO22X1 U80 ( .IN1(A[26]), .IN2(C[26]), .IN3(B[26]), .IN4(n40), .Q(C[27]) );
  OR2X1 U81 ( .IN1(C[26]), .IN2(A[26]), .Q(n40) );
  AO22X1 U82 ( .IN1(A[25]), .IN2(C[25]), .IN3(B[25]), .IN4(n41), .Q(C[26]) );
  OR2X1 U83 ( .IN1(C[25]), .IN2(A[25]), .Q(n41) );
  AO22X1 U84 ( .IN1(A[24]), .IN2(C[24]), .IN3(B[24]), .IN4(n42), .Q(C[25]) );
  OR2X1 U85 ( .IN1(C[24]), .IN2(A[24]), .Q(n42) );
  AO22X1 U86 ( .IN1(A[23]), .IN2(C[23]), .IN3(B[23]), .IN4(n43), .Q(C[24]) );
  OR2X1 U87 ( .IN1(C[23]), .IN2(A[23]), .Q(n43) );
  AO22X1 U88 ( .IN1(A[22]), .IN2(C[22]), .IN3(B[22]), .IN4(n44), .Q(C[23]) );
  OR2X1 U89 ( .IN1(C[22]), .IN2(A[22]), .Q(n44) );
  AO22X1 U90 ( .IN1(A[21]), .IN2(C[21]), .IN3(B[21]), .IN4(n45), .Q(C[22]) );
  OR2X1 U91 ( .IN1(C[21]), .IN2(A[21]), .Q(n45) );
  AO22X1 U92 ( .IN1(A[20]), .IN2(C[20]), .IN3(B[20]), .IN4(n46), .Q(C[21]) );
  OR2X1 U93 ( .IN1(C[20]), .IN2(A[20]), .Q(n46) );
  AO22X1 U94 ( .IN1(A[19]), .IN2(C[19]), .IN3(B[19]), .IN4(n47), .Q(C[20]) );
  OR2X1 U95 ( .IN1(C[19]), .IN2(A[19]), .Q(n47) );
  AO22X1 U96 ( .IN1(A[18]), .IN2(C[18]), .IN3(B[18]), .IN4(n48), .Q(C[19]) );
  OR2X1 U97 ( .IN1(C[18]), .IN2(A[18]), .Q(n48) );
  AO22X1 U98 ( .IN1(A[17]), .IN2(C[17]), .IN3(B[17]), .IN4(n49), .Q(C[18]) );
  OR2X1 U99 ( .IN1(C[17]), .IN2(A[17]), .Q(n49) );
  AO22X1 U100 ( .IN1(A[16]), .IN2(C[16]), .IN3(B[16]), .IN4(n50), .Q(C[17]) );
  OR2X1 U101 ( .IN1(C[16]), .IN2(A[16]), .Q(n50) );
  AO22X1 U102 ( .IN1(A[15]), .IN2(C[15]), .IN3(B[15]), .IN4(n51), .Q(C[16]) );
  OR2X1 U103 ( .IN1(C[15]), .IN2(A[15]), .Q(n51) );
  AO22X1 U104 ( .IN1(A[14]), .IN2(C[14]), .IN3(B[14]), .IN4(n52), .Q(C[15]) );
  OR2X1 U105 ( .IN1(C[14]), .IN2(A[14]), .Q(n52) );
  AO22X1 U106 ( .IN1(A[13]), .IN2(C[13]), .IN3(B[13]), .IN4(n53), .Q(C[14]) );
  OR2X1 U107 ( .IN1(C[13]), .IN2(A[13]), .Q(n53) );
  AO22X1 U108 ( .IN1(A[12]), .IN2(C[12]), .IN3(B[12]), .IN4(n54), .Q(C[13]) );
  OR2X1 U109 ( .IN1(C[12]), .IN2(A[12]), .Q(n54) );
  AO22X1 U110 ( .IN1(A[11]), .IN2(C[11]), .IN3(B[11]), .IN4(n55), .Q(C[12]) );
  OR2X1 U111 ( .IN1(C[11]), .IN2(A[11]), .Q(n55) );
  AO22X1 U112 ( .IN1(A[10]), .IN2(C[10]), .IN3(B[10]), .IN4(n56), .Q(C[11]) );
  OR2X1 U113 ( .IN1(C[10]), .IN2(A[10]), .Q(n56) );
  AO22X1 U114 ( .IN1(A[9]), .IN2(C[9]), .IN3(B[9]), .IN4(n57), .Q(C[10]) );
  OR2X1 U115 ( .IN1(C[9]), .IN2(A[9]), .Q(n57) );
  AO22X1 U116 ( .IN1(A[8]), .IN2(C[8]), .IN3(B[8]), .IN4(n58), .Q(C[9]) );
  OR2X1 U117 ( .IN1(C[8]), .IN2(A[8]), .Q(n58) );
  AO22X1 U118 ( .IN1(A[7]), .IN2(C[7]), .IN3(B[7]), .IN4(n59), .Q(C[8]) );
  OR2X1 U119 ( .IN1(C[7]), .IN2(A[7]), .Q(n59) );
  AO22X1 U120 ( .IN1(A[6]), .IN2(C[6]), .IN3(B[6]), .IN4(n60), .Q(C[7]) );
  OR2X1 U121 ( .IN1(C[6]), .IN2(A[6]), .Q(n60) );
  AO22X1 U122 ( .IN1(A[5]), .IN2(C[5]), .IN3(B[5]), .IN4(n61), .Q(C[6]) );
  OR2X1 U123 ( .IN1(C[5]), .IN2(A[5]), .Q(n61) );
  AO22X1 U124 ( .IN1(A[4]), .IN2(C[4]), .IN3(B[4]), .IN4(n62), .Q(C[5]) );
  OR2X1 U125 ( .IN1(C[4]), .IN2(A[4]), .Q(n62) );
  AO22X1 U126 ( .IN1(A[3]), .IN2(C[3]), .IN3(B[3]), .IN4(n63), .Q(C[4]) );
  OR2X1 U127 ( .IN1(C[3]), .IN2(A[3]), .Q(n63) );
  AO22X1 U128 ( .IN1(A[2]), .IN2(C[2]), .IN3(B[2]), .IN4(n64), .Q(C[3]) );
  OR2X1 U129 ( .IN1(C[2]), .IN2(A[2]), .Q(n64) );
  AO22X1 U130 ( .IN1(A[1]), .IN2(C[1]), .IN3(B[1]), .IN4(n65), .Q(C[2]) );
  OR2X1 U131 ( .IN1(C[1]), .IN2(A[1]), .Q(n65) );
  AO22X1 U132 ( .IN1(B[0]), .IN2(A[0]), .IN3(Cin), .IN4(n66), .Q(C[1]) );
  OR2X1 U133 ( .IN1(B[0]), .IN2(A[0]), .Q(n66) );
endmodule