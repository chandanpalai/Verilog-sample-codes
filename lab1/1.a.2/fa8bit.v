module fa8bit(A,B,C,Sum,Carry);

   input [7:0]A,B;
   input      C;
   output [7:0] Sum;
   output 	Carry;

   assign{Carry,Sum}= A + B + C;
endmodule   
