
module bypassAdder(
    input [31:0] A,
    input [31:0] B,
    input Cin, 
    output [31:0] S,
    output Cout,
    output overFlow
);

    wire [31:0] carry;
    wire [63:0] P;
    wire [7:0] prop_carry;

    // Generate 32-bit full adders
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gen_full_adders
            fullAdder FA(
                .A(A[i]),
                .B(B[i]),
                .Cin(i == 0 ? Cin : carry[i - 1]),
                .Sum(S[i]),
                .Cout(carry[i])
            );
        end
    endgenerate

    // Generate XOR for each 4-bit segment
    genvar j;
    generate
        for (j = 0; j < 8; j = j + 1) begin : gen_P
            assign P[4 * j +: 4] = A[4 * j +: 4] ^ B[4 * j +: 4];
        end
    endgenerate

    // Compute carries for each 4-bit segment
    assign prop_carry[0] = (P[0] & P[1] & P[2] & P[3]) ? Cin : carry[3];

    genvar k;
    generate
        for (k = 1; k < 8; k = k + 1) begin : gen_carry
            assign prop_carry[k] = (P[k * 4] & P[k * 4 + 1] & P[k * 4 + 2] & P[k * 4 + 3]) ? prop_carry[k - 1] : carry[k * 4 - 1];
        end
    endgenerate

    // Output
    assign S = S;

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

