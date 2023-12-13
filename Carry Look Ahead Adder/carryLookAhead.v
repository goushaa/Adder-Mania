module carryLookAhead32(
    input [31:0] A,
    input [31:0] B,
    input Cin, 
    output [31:0] S,
    output Cout,
    output overFlow
);
    wire [31:0] sumSignal;
    wire [31:0] G;
    wire [31:0] P;
    wire [32:0] C;
    wire dummyOut;

    // Generate fullAdders using generate loop for 32 bits
    //OR we can use a ripple carry adder instead it is the same code
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gen_full_adders
            fullAdder FA(.A(A[i]), .B(B[i]), .Cin(i == 0 ? 0 : C[i]), .Sum(S[i]), .Cout(dummyOut));
        end
    endgenerate

    // Generate Terms G and P for 32 bits
    genvar j;
    generate
        for (j = 0; j < 32; j = j + 1) begin : gen_G_P
            assign G[j] = A[j] & B[j];
            assign P[j] = A[j] ^ B[j];
        end
    endgenerate

    // Generate Carry Terms C for 32 bits
    genvar k;
    generate
        for (k = 0; k < 33; k = k + 1) begin : gen_C
            if (k == 0)
                assign C[0] = 0;
            else begin
                wire temp = G[k - 1] | (P[k - 1] & C[k - 1]);
                assign C[k] = temp;
            end
        end
    endgenerate
    assign overFlow = (A[31] == B[31] && A[31] != S[31]) ? 1'b1 : 1'b0;
    assign Cout = C[32];


endmodule

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


