module fa(A,B,Cin,Sum,Carry);
  parameter m=8;
  
  input [m-1:0]A,B;
  input Cin;
  output [m-1:0]Sum;
  output Carry;

assign {Carry,Sum} = A+B+Cin;

endmodule