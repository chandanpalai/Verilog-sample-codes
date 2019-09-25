module fa8bit(A,B,C,Sum,Carry);

   input[7:0]A,B;
   input     C;
   output [7:0] Sum;
   output 	Carry;

   wire temp;

   fa4bit u0(.A(A[3:0]),.B(B[3:0]),.C(C),.Sum(Sum[3:0]),.Carry(temp));

   fa4bit u1(.A(A[7:4]),.B(B[7:4]),.C(temp),.Sum(Sum[7:4]),.Carry(Carry));

endmodule   
   
