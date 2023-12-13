`timescale 1 ns / 100 ps

module rippleAdder_tb();
parameter maxInt=2147483647,minInt=-2147483648;
reg [31:0]in1, in2;
reg cin;
wire [31:0]out;
wire cout,overflow;
rippleCarryAdder32 dut(.A(in1), .B(in2), .Cin(cin), .S(out),.Cout(cout), .overFlow(overflow));


initial begin 

in1 = maxInt; in2 = 1; cin = 0; #10;
if(out == minInt && overflow == 1) $display("TestCase#1: success"); 
else $display("TestCase#1: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2),$signed(out), overflow);
in1 = minInt; in2 = -1; #10;
if(out == maxInt && overflow == 1) $display("TestCase#2: success"); 
else $display("TestCase#2: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2),$signed(out), overflow);
in1 = 10; in2 = -5; #10;
if(out == 5 && overflow == 0) $display("TestCase#3: success"); 
else $display("TestCase#3: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2), $signed(out), overflow);
in1 = 5; in2 = 5; #10;
if(out == 10  && overflow == 0) $display("TestCase#4: success"); 
else $display("TestCase#4: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2), $signed(out), overflow);
in1 = -5; in2 = -5; #10;
if(out == -10 && overflow == 0) $display("TestCase#5: success"); 
else $display("TestCase#5: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2), $signed(out), overflow);
in1 = maxInt; in2 = 5; #10;
if(out == (minInt+4) && overflow == 1) $display("TestCase#6: success"); 
else $display("TestCase#6: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2), $signed(out), overflow);
in1 = minInt; in2 = -5; #10;
if(out == (maxInt-4) && overflow == 1) $display("TestCase#7: success"); 
else $display("TestCase#7: failed with input %d and %d and Output %d and overflow status %d", $signed(in1), $signed(in2), $signed(out), overflow);
in1 = 5; in2 = -5; #10;
if(out == 0 && overflow == 0) $display("TestCase#8: success"); 
else $display("TestCase#8: failed with input %d and %d and Output %d and overflow status %dd", $signed(in1), $signed(in2), $signed(out), overflow);

end

endmodule