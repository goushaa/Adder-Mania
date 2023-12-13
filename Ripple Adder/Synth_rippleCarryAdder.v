/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 16:55:09 2023
/////////////////////////////////////////////////////////////

module fullAdder ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2;

  XOR2X1 U4 ( .IN1(Cin), .IN2(n2), .Q(Sum) );
  AO22X1 U5 ( .IN1(A), .IN2(B), .IN3(Cin), .IN4(n2), .Q(Cout) );
  XOR2X1 U6 ( .IN1(A), .IN2(B), .Q(n2) );
endmodule

module rippleCarryAdder ( A, B, Cin, S, Cout, overFlow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout, overFlow;
  wire   N3, n3, n4;
  wire   [30:0] carry;
  assign overFlow = N3;

  fullAdder u1  ( .A(A[0]), .B(B[0]), .Cin(Cin), .Sum(
        S[0]), .Cout(carry[0]) );
  fullAdder u2  ( .A(A[1]), .B(B[1]), .Cin(carry[0]), 
        .Sum(S[1]), .Cout(carry[1]) );
  fullAdder u3  ( .A(A[2]), .B(B[2]), .Cin(carry[1]), 
        .Sum(S[2]), .Cout(carry[2]) );
  fullAdder u4  ( .A(A[3]), .B(B[3]), .Cin(carry[2]), 
        .Sum(S[3]), .Cout(carry[3]) );
  fullAdder u5  ( .A(A[4]), .B(B[4]), .Cin(carry[3]), 
        .Sum(S[4]), .Cout(carry[4]) );
  fullAdder u6  ( .A(A[5]), .B(B[5]), .Cin(carry[4]), 
        .Sum(S[5]), .Cout(carry[5]) );
  fullAdder u7  ( .A(A[6]), .B(B[6]), .Cin(carry[5]), 
        .Sum(S[6]), .Cout(carry[6]) );
  fullAdder u8  ( .A(A[7]), .B(B[7]), .Cin(carry[6]), 
        .Sum(S[7]), .Cout(carry[7]) );
  fullAdder u9  ( .A(A[8]), .B(B[8]), .Cin(carry[7]), 
        .Sum(S[8]), .Cout(carry[8]) );
  fullAdder u10  ( .A(A[9]), .B(B[9]), .Cin(carry[8]), 
        .Sum(S[9]), .Cout(carry[9]) );
  fullAdder u11  ( .A(A[10]), .B(B[10]), .Cin(carry[9]), 
        .Sum(S[10]), .Cout(carry[10]) );
  fullAdder u12  ( .A(A[11]), .B(B[11]), .Cin(carry[10]), .Sum(S[11]), .Cout(carry[11]) );
  fullAdder u13  ( .A(A[12]), .B(B[12]), .Cin(carry[11]), .Sum(S[12]), .Cout(carry[12]) );
  fullAdder u14  ( .A(A[13]), .B(B[13]), .Cin(carry[12]), .Sum(S[13]), .Cout(carry[13]) );
  fullAdder u15  ( .A(A[14]), .B(B[14]), .Cin(carry[13]), .Sum(S[14]), .Cout(carry[14]) );
  fullAdder u16  ( .A(A[15]), .B(B[15]), .Cin(carry[14]), .Sum(S[15]), .Cout(carry[15]) );
  fullAdder u32  ( .A(A[16]), .B(B[16]), .Cin(carry[15]), .Sum(S[16]), .Cout(carry[16]) );
  fullAdder u17 ( .A(A[17]), .B(B[17]), .Cin(carry[16]), .Sum(S[17]), .Cout(carry[17]) );
  fullAdder u18  ( .A(A[18]), .B(B[18]), .Cin(carry[17]), .Sum(S[18]), .Cout(carry[18]) );
  fullAdder u19  ( .A(A[19]), .B(B[19]), .Cin(carry[18]), .Sum(S[19]), .Cout(carry[19]) );
  fullAdder u20  ( .A(A[20]), .B(B[20]), .Cin(carry[19]), .Sum(S[20]), .Cout(carry[20]) );
  fullAdder u21  ( .A(A[21]), .B(B[21]), .Cin(carry[20]), .Sum(S[21]), .Cout(carry[21]) );
  fullAdder u22  ( .A(A[22]), .B(B[22]), .Cin(carry[21]), .Sum(S[22]), .Cout(carry[22]) );
  fullAdder u23  ( .A(A[23]), .B(B[23]), .Cin(carry[22]), 
        .Sum(S[23]), .Cout(carry[23]) );
  fullAdder u24  ( .A(A[24]), .B(B[24]), .Cin(carry[23]), 
        .Sum(S[24]), .Cout(carry[24]) );
  fullAdder u25  ( .A(A[25]), .B(B[25]), .Cin(carry[24]), 
        .Sum(S[25]), .Cout(carry[25]) );
  fullAdder u26  ( .A(A[26]), .B(B[26]), .Cin(carry[25]), 
        .Sum(S[26]), .Cout(carry[26]) );
  fullAdder u27  ( .A(A[27]), .B(B[27]), .Cin(carry[26]), 
        .Sum(S[27]), .Cout(carry[27]) );
  fullAdder u28 ( .A(A[28]), .B(B[28]), .Cin(carry[27]), 
        .Sum(S[28]), .Cout(carry[28]) );
  fullAdder u29  ( .A(A[29]), .B(B[29]), .Cin(carry[28]), 
        .Sum(S[29]), .Cout(carry[29]) );
  fullAdder u30  ( .A(A[30]), .B(B[30]), .Cin(carry[29]), 
        .Sum(S[30]), .Cout(carry[30]) );
  fullAdder u31  ( .A(A[31]), .B(B[31]), .Cin(carry[30]), 
        .Sum(S[31]), .Cout(Cout) );
  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(N3) );
  XOR2X1 U5 ( .IN1(B[31]), .IN2(A[31]), .Q(n4) );
  XNOR2X1 U6 ( .IN1(A[31]), .IN2(S[31]), .Q(n3) );
endmodule