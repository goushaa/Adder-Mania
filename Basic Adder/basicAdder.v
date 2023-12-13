module basicAdder(
    input [31:0] A,
    input [31:0] B,
    input Cin, 
    output [31:0] S,
    output Cout,
    output overFlow
);

assign {Cout , S}= A + B + Cin ;

assign overFlow = (A[31] == B[31] && A[31] != S[31]) ? 1'b1 : 1'b0;
endmodule
