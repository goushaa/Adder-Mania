module rippleCarryAdder(
    input [31:0] A,
    input [31:0] B,
    input Cin, 
    output [31:0] S,
    output Cout,
    output overFlow
);

    wire [31:0] carry;
    wire [31:0] sum; 

    // Generate full adder instances using a generate loop
    genvar i;
    generate
        for (i = 0; i < 32; i = i + 1) begin : gen_full_adders
            fullAdder FA(.A(A[i]), .B(B[i]), .Cin(i == 0 ? 0 : carry[i - 1]), .Sum(sum[i]), .Cout(carry[i]));
        end
    endgenerate

    assign S = sum[31:0];
    assign Cout = carry[31];
    assign overFlow = (A[31] == B[31] && A[31] != S[31]) ? 1'b1 : 1'b0;

endmodule
