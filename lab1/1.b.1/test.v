module tb;
   reg  [3:0]A,B;
   reg  C;
   wire [3:0]Sum;
   wire Carry;

   fa4bit u0(A,B,C,Sum,Carry);

   always
     begin

	A=$random;
	B=$random;
	C=$random;
	#10;

     end // always begin
   endmodule  
