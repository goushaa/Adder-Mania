module carrySelectAdder(
    input [31:0] A,
    input [31:0] B,
    input Cin,
    output reg [31:0] S,
    output reg  Cout,
    output overFlow

);

    wire [15:0] sumSignal;
    wire carrySelectSignal;
    wire [15:0] sumLeft;
    wire carryLeft;
    wire [15:0] sumRight;
    wire carryRight;

    fullAdder16 FA0(.A(A[15:0]), .B(B[15:0]), .Cin(Cin), .Sum(sumSignal), .Cout(carrySelectSignal));    
    fullAdder16 FA2(.A(A[31:16]), .B(B[31:16]), .Cin(1'b1), .Sum(sumLeft), .Cout(carryLeft));       // Left
    fullAdder16 FA1(.A(A[31:16]), .B(B[31:16]), .Cin(1'b0), .Sum(sumRight), .Cout(carryRight));     // Right

    always @(*) begin
        S[15:0] = sumSignal;
        if (carrySelectSignal == 0) begin
            S[31:16] = sumRight;
            Cout = carryRight;
        end
        else begin
            S[31:16] = sumLeft;
             Cout = carryLeft;
        end
    end
    assign overFlow = (A[31] == B[31] && A[31] != S[31]) ? 1'b1 : 1'b0;
  
endmodule

module fullAdder16(
    input [15:0] A,
    input [15:0] B,
    input Cin,
    output [15:0] Sum,
    output Cout
);

    wire [15:0] carry;

    genvar i;
    generate
        for (i = 0; i < 16; i = i + 1) begin : gen_full_adders
            fullAdder FA(.A(A[i]), .B(B[i]), .Cin(i == 0 ? Cin : carry[i - 1]), .Sum(Sum[i]), .Cout(carry[i]));
        end
    endgenerate

    assign Cout = carry[15];

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

