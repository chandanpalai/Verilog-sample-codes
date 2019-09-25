module fa(A,B,Sum,Cin,Carry);
  
  input [15:0]A,B;
  input Cin;
  output [15:0]Sum;
  output Carry;

assign {Carry,Sum} = A+B+Cin;

endmodule