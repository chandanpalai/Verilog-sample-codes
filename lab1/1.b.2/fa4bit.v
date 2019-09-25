module fa4bit(A,B,C,Sum,Carry);
   input[3:0]A,B;
   input   C;
   output [3:0]Sum;
   output Carry;

   wire [2:0]temp;
   
   fa u0(.A(A[0]),.B(B[0]),.C(C),.Sum(Sum[0]),.Carry(temp[0]));
   fa u1(.A(A[1]),.B(B[1]),.C(temp[0]),.Sum(Sum[1]),.Carry(temp[1]));
   fa u2(.A(A[2]),.B(B[2]),.C(temp[1]),.Sum(Sum[2]),.Carry(temp[2]));  
   fa u3(.A(A[3]),.B(B[3]),.C(temp[2]),.Sum(Sum[3]),.Carry(Carry));

   endmodule
     
