/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : U-2022.12-SP7
// Date      : Tue Dec 12 20:48:09 2023
/////////////////////////////////////////////////////////////


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

module bypass_adder ( A, B, Cin, S, Cout );
  input [3:0] A;
  input [3:0] B;
  output [3:0] S;
  input Cin;
  output Cout;
  wire   n7, n8, n9, n10, n11;
  wire   [3:0] carry;

  fullAdder FA1 ( .A(A[0]), .B(B[0]), .Cin(Cin), .Sum(S[0]), .Cout(carry[0])
         );
  fullAdder FA2 ( .A(A[1]), .B(B[1]), .Cin(carry[0]), .Sum(S[1]), .Cout(
        carry[1]) );
  fullAdder FA3 ( .A(A[2]), .B(B[2]), .Cin(carry[1]), .Sum(S[2]), .Cout(
        carry[2]) );
  fullAdder FA4 ( .A(A[3]), .B(B[3]), .Cin(carry[2]), .Sum(S[3]), .Cout(
        carry[3]) );
  MUX21X1 U8 ( .IN1(carry[3]), .IN2(Cin), .S(n7), .Q(Cout) );
  NOR4X0 U9 ( .IN1(n8), .IN2(n9), .IN3(n10), .IN4(n11), .QN(n7) );
  XNOR2X1 U10 ( .IN1(B[3]), .IN2(A[3]), .Q(n11) );
  XNOR2X1 U11 ( .IN1(B[2]), .IN2(A[2]), .Q(n10) );
  XNOR2X1 U12 ( .IN1(B[1]), .IN2(A[1]), .Q(n9) );
  XNOR2X1 U13 ( .IN1(B[0]), .IN2(A[0]), .Q(n8) );
endmodule




module bypassAdder ( A, B, Cin, S, Cout, overFlow );
  input [31:0] A;
  input [31:0] B;
  output [31:0] S;
  input Cin;
  output Cout, overFlow;
  wire   N3, n3, n4;
  wire   [6:0] carry;
  assign overFlow = N3;

  bypass_adder BA1 ( .A(A[3:0]), .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(
        carry[0]) );
  bypass_adder BA2 ( .A(A[7:4]), .B(B[7:4]), .Cin(carry[0]), .S(S[7:4]), 
        .Cout(carry[1]) );
  bypass_adder BA3 ( .A(A[11:8]), .B(B[11:8]), .Cin(carry[1]), .S(S[11:8]), 
        .Cout(carry[2]) );
  bypass_adder BA4 ( .A(A[15:12]), .B(B[15:12]), .Cin(carry[2]), .S(S[15:12]), .Cout(carry[3]) );
  bypass_adder BA5 ( .A(A[19:16]), .B(B[19:16]), .Cin(carry[3]), .S(S[19:16]), .Cout(carry[4]) );
  bypass_adder BA6 ( .A(A[23:20]), .B(B[23:20]), .Cin(carry[4]), .S(S[23:20]), .Cout(carry[5]) );
  bypass_adder BA7 ( .A(A[27:24]), .B(B[27:24]), .Cin(carry[5]), .S(S[27:24]), .Cout(carry[6]) );
  bypass_adder BA8 ( .A(A[31:28]), .B(B[31:28]), .Cin(carry[6]), .S(S[31:28]), .Cout(Cout) );
  NOR2X0 U4 ( .IN1(n3), .IN2(n4), .QN(N3) );
  XOR2X1 U5 ( .IN1(B[31]), .IN2(A[31]), .Q(n4) );
  XNOR2X1 U6 ( .IN1(A[31]), .IN2(S[31]), .Q(n3) );
endmodule