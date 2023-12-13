/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 19:58:20 2023
/////////////////////////////////////////////////////////////

module fullAdder ( A, B, Cin, Sum, Cout );
  input A, B, Cin;
  output Sum, Cout;
  wire   n2;

  XOR2X1 U4 ( .IN1(Cin), .IN2(n2), .Q(Sum) );
  AO22X1 U5 ( .IN1(A), .IN2(B), .IN3(Cin), .IN4(n2), .Q(Cout) );
  XOR2X1 U6 ( .IN1(A), .IN2(B), .Q(n2) );
endmodule


module fullAdder16 ( A, B, Cin, Sum, Cout );
  input [15:0] A;
  input [15:0] B;
  output [15:0] Sum;
  input Cin;
  output Cout;

  wire   [14:0] carry;

  fullAdder u1  ( .A(A[0]), .B(B[0]), .Cin(Cin), .Sum(
        Sum[0]), .Cout(carry[0]) );
  fullAdder u2  ( .A(A[1]), .B(B[1]), .Cin(carry[0]), 
        .Sum(Sum[1]), .Cout(carry[1]) );
  fullAdder u3  ( .A(A[2]), .B(B[2]), .Cin(carry[1]), 
        .Sum(Sum[2]), .Cout(carry[2]) );
  fullAdder u4  ( .A(A[3]), .B(B[3]), .Cin(carry[2]), 
        .Sum(Sum[3]), .Cout(carry[3]) );
  fullAdder u5  ( .A(A[4]), .B(B[4]), .Cin(carry[3]), 
        .Sum(Sum[4]), .Cout(carry[4]) );
  fullAdder u6  ( .A(A[5]), .B(B[5]), .Cin(carry[4]), 
        .Sum(Sum[5]), .Cout(carry[5]) );
  fullAdder u7  ( .A(A[6]), .B(B[6]), .Cin(carry[5]), 
        .Sum(Sum[6]), .Cout(carry[6]) );
  fullAdder u8  ( .A(A[7]), .B(B[7]), .Cin(carry[6]), 
        .Sum(Sum[7]), .Cout(carry[7]) );
  fullAdder u9  ( .A(A[8]), .B(B[8]), .Cin(carry[7]), 
        .Sum(Sum[8]), .Cout(carry[8]) );
  fullAdder u10  ( .A(A[9]), .B(B[9]), .Cin(carry[8]), 
        .Sum(Sum[9]), .Cout(carry[9]) );
  fullAdder u11  ( .A(A[10]), .B(B[10]), .Cin(carry[9]), 
        .Sum(Sum[10]), .Cout(carry[10]) );
  fullAdder u12  ( .A(A[11]), .B(B[11]), .Cin(carry[10]), 
        .Sum(Sum[11]), .Cout(carry[11]) );
  fullAdder u13  ( .A(A[12]), .B(B[12]), .Cin(carry[11]), 
        .Sum(Sum[12]), .Cout(carry[12]) );
  fullAdder u14  ( .A(A[13]), .B(B[13]), .Cin(carry[12]), 
        .Sum(Sum[13]), .Cout(carry[13]) );
  fullAdder u15  ( .A(A[14]), .B(B[14]), .Cin(carry[13]), 
        .Sum(Sum[14]), .Cout(carry[14]) );
  fullAdder u16  ( .A(A[15]), .B(B[15]), .Cin(carry[14]), 
        .Sum(Sum[15]), .Cout(Cout) );
endmodule





module carrySelectAdder ( A, B, Cin, S, Cout, overFlow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout, overFlow;
  wire   carrySelectSignal, carryLeft, carryRight, N5, n4, n5;
  wire   [15:0] sumLeft;
  wire   [15:0] sumRight;
  assign overFlow = N5;

  fullAdder16 FA0 ( .A(A[15:0]), .B(B[15:0]), .Cin(Cin), .Sum(S[15:0]), 
        .Cout(carrySelectSignal) );
  fullAdder16 FA2 ( .A(A[31:16]), .B(B[31:16]), .Cin(1'b1), .Sum(sumLeft), 
        .Cout(carryLeft) );
  fullAdder16 FA1 ( .A(A[31:16]), .B(B[31:16]), .Cin(1'b0), .Sum(sumRight), 
        .Cout(carryRight) );
  MUX21X1 U24 ( .IN1(sumRight[14]), .IN2(sumLeft[14]), .S(carrySelectSignal), 
        .Q(S[30]) );
  MUX21X1 U25 ( .IN1(sumRight[13]), .IN2(sumLeft[13]), .S(carrySelectSignal), 
        .Q(S[29]) );
  MUX21X1 U26 ( .IN1(sumRight[12]), .IN2(sumLeft[12]), .S(carrySelectSignal), 
        .Q(S[28]) );
  MUX21X1 U27 ( .IN1(sumRight[11]), .IN2(sumLeft[11]), .S(carrySelectSignal), 
        .Q(S[27]) );
  MUX21X1 U28 ( .IN1(sumRight[10]), .IN2(sumLeft[10]), .S(carrySelectSignal), 
        .Q(S[26]) );
  MUX21X1 U29 ( .IN1(sumRight[9]), .IN2(sumLeft[9]), .S(carrySelectSignal), 
        .Q(S[25]) );
  MUX21X1 U30 ( .IN1(sumRight[8]), .IN2(sumLeft[8]), .S(carrySelectSignal), 
        .Q(S[24]) );
  MUX21X1 U31 ( .IN1(sumRight[7]), .IN2(sumLeft[7]), .S(carrySelectSignal), 
        .Q(S[23]) );
  MUX21X1 U32 ( .IN1(sumRight[6]), .IN2(sumLeft[6]), .S(carrySelectSignal), 
        .Q(S[22]) );
  MUX21X1 U33 ( .IN1(sumRight[5]), .IN2(sumLeft[5]), .S(carrySelectSignal), 
        .Q(S[21]) );
  MUX21X1 U34 ( .IN1(sumRight[4]), .IN2(sumLeft[4]), .S(carrySelectSignal), 
        .Q(S[20]) );
  MUX21X1 U35 ( .IN1(sumRight[3]), .IN2(sumLeft[3]), .S(carrySelectSignal), 
        .Q(S[19]) );
  MUX21X1 U36 ( .IN1(sumRight[2]), .IN2(sumLeft[2]), .S(carrySelectSignal), 
        .Q(S[18]) );
  MUX21X1 U37 ( .IN1(sumRight[1]), .IN2(sumLeft[1]), .S(carrySelectSignal), 
        .Q(S[17]) );
  MUX21X1 U38 ( .IN1(sumRight[0]), .IN2(sumLeft[0]), .S(carrySelectSignal), 
        .Q(S[16]) );
  NOR2X0 U39 ( .IN1(n4), .IN2(n5), .QN(N5) );
  XOR2X1 U40 ( .IN1(B[31]), .IN2(A[31]), .Q(n5) );
  XNOR2X1 U41 ( .IN1(A[31]), .IN2(S[31]), .Q(n4) );
  MUX21X1 U42 ( .IN1(sumRight[15]), .IN2(sumLeft[15]), .S(carrySelectSignal), 
        .Q(S[31]) );
  MUX21X1 U43 ( .IN1(carryRight), .IN2(carryLeft), .S(carrySelectSignal), .Q(
        Cout) );
endmodule