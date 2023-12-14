module bypassAdder(
    input [31:0] A,
    input [31:0] B,
    input Cin, 
    output [31:0] S,
    output Cout,
    output overFlow
);

    wire [6:0] carry;
    //8 stages 
    bypass_adder BA1(.A(A[3:0]),   .B(B[3:0]), .Cin(Cin), .S(S[3:0]), .Cout(carry[0]));
    bypass_adder BA2(.A(A[7:4]),   .B(B[7:4]), .Cin(carry[0]), .S(S[7:4]), .Cout(carry[1]));
    bypass_adder BA3(.A(A[11:8]),  .B(B[11:8]), .Cin(carry[1]), .S(S[11:8]), .Cout(carry[2]));
    bypass_adder BA4(.A(A[15:12]), .B(B[15:12]), .Cin(carry[2]), .S(S[15:12]), .Cout(carry[3]));
    bypass_adder BA5(.A(A[19:16]), .B(B[19:16]), .Cin(carry[3]), .S(S[19:16]), .Cout(carry[4]));
    bypass_adder BA6(.A(A[23:20]), .B(B[23:20]), .Cin(carry[4]), .S(S[23:20]), .Cout(carry[5]));
    bypass_adder BA7(.A(A[27:24]), .B(B[27:24]), .Cin(carry[5]), .S(S[27:24]), .Cout(carry[6]));
    bypass_adder BA8(.A(A[31:28]), .B(B[31:28]), .Cin(carry[6]), .S(S[31:28]), .Cout(Cout));

    assign overFlow = (A[31] == B[31] && A[31] != S[31]) ? 1'b1 : 1'b0;

endmodule

module bypass_adder(
    input [3:0] A, // 4-bit input A
    input [3:0] B, // 4-bit input B
    input  Cin, // 4-bit input carry-in
    output [3:0] S, // 4-bit output sum
    output Cout // Output carry-out
);
    wire [3:0] carry;
    wire [3:0] P;
    assign P = A ^ B;
    fullAdder FA1(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(S[0]), .Cout(carry[0]));
    fullAdder FA2(.A(A[1]), .B(B[1]), .Cin(carry[0]), .Sum(S[1]), .Cout(carry[1]));
    fullAdder FA3(.A(A[2]), .B(B[2]), .Cin(carry[1]), .Sum(S[2]), .Cout(carry[2]));
    fullAdder FA4(.A(A[3]), .B(B[3]), .Cin(carry[2]), .Sum(S[3]), .Cout(carry[3]));

    //mux for the first 4 propagates 
    assign Cout = (P[0] & P[1] & P[2] & P[3] ) ? Cin : carry[3];
endmodule