module fpAdder(
  input [31:0] A,
  input [31:0] B,
  output reg [31:0] Sum,
  output reg overFlow
);
  reg [24:0] MA,MB, MR;
  reg [7:0] ER;
  reg SR;
  reg IBA, IBB;
  integer MSB,i;

  always @* begin
    overFlow=0;
    IBA = (A[30:23] == 8'b00000000) ? 1'b0 : 1'b1;
    IBB = (B[30:23] == 8'b00000000) ? 1'b0 : 1'b1;
    MB = {IBB, B[22:0]};
    MA = {IBA, A[22:0]};
     if (A[30:23] > B[30:23]) begin
      MB = MB >> (A[30:23] - B[30:23]);
      ER = A[30:23];
    end else begin
      MA = MA >> (B[30:23] - A[30:23]);
      ER = B[30:23];
    end
    if (A[31] == B[31]) begin
      MR = MA + MB;
      SR = A[31];
      if (MR[24]) begin
        MR = MR >> 1;
        ER = ER + 1;
      end
    end 
    else begin
        if (MA>=MB) begin
            MR = MA - MB;
        end
        else begin
            MR = MB - MA;
        end
      SR = (MA >= MB) ? A[31] : B[31];
      for (i=0; i<24; i=i+1) begin
        if (MR[i]==1) begin
            MSB=i;
        end
      end
      MR = MR << (23-MSB);
      ER = ER -(23-MSB);
    end

    if (ER == 8'b11111111) begin
        overFlow=1;
        MR[22:0]=0;
    end
    Sum = {SR, ER, MR[22:0]};
  end

endmodule
