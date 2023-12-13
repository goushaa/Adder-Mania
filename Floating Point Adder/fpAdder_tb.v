`timescale 1 ns / 100 ps

module fpAdder_tb();
parameter posInf=32'b01111111100000000000000000000000, negInf=32'b11111111100000000000000000000000;
reg [31:0]in1, in2;
wire [31:0]out;
wire overflow;
fpAdder dut(.A(in1), .B(in2),.Sum(out), .overFlow(overflow));

initial begin 

in1 = posInf; in2 = 32'b00111111100000000000000000000000; #10; //posINF + 1  
if(out == posInf && overflow == 1) $display("TestCase#1: success"); 
else $display("TestCase#1: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = negInf; in2 = 32'b10111111100000000000000000000000; #10; //negINF + -1  
if(out == negInf && overflow == 1) $display("TestCase#2: success"); 
else $display("TestCase#2: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b00111111110000000000000000000000; in2 = 32'b11000000101100000000000000000000; #10; //1.5 + -5.5 = -4
if(out == 32'b11000000100000000000000000000000 && overflow == 0) $display("TestCase#3: success"); 
else $display("TestCase#3: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b00111111101000000000000000000000; in2 = 32'b01000000001000000000000000000000; #10; //1.25 + 2.5 = 3.75
if(out == 32'b01000000011100000000000000000000 && overflow == 0) $display("TestCase#4: success"); 
else $display("TestCase#4: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b10111111101000000000000000000000; in2 = 32'b11000000001000000000000000000000; #10; //-1.25 + -2.5 = -3.75
if(out == 32'b11000000011100000000000000000000 && overflow == 0) $display("TestCase#5: success"); 
else $display("TestCase#5: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b00111111100110011001100110011010; in2 = 32'b00000000000000000000000000000000; #10;
if(out == 32'b00111111100110011001100110011010 && overflow == 0) $display("TestCase#6: success"); 
else $display("TestCase#6: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b10111111100110011001100110011010; in2 = 32'b00000000000000000000000000000000; #10;
if(out == 32'b10111111100110011001100110011010&& overflow == 0) $display("TestCase#7: success"); 
else $display("TestCase#7: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);
in1 = 32'b00000000000000000000000000000000; in2 = 32'b00000000000000000000000000000000; #10;
if(out == 32'b00000000000000000000000000000000 && overflow == 0) $display("TestCase#8: success"); 
else $display("TestCase#8: failed with input %b and %b and Output %b and overflow status %d", in1, in2, out, overflow);

end

endmodule