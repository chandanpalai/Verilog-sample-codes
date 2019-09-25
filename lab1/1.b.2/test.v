module tb;

   reg  [7:0]A,B;

   reg 	     C;

   wire [7:0] Sum;

   wire       Carry;


   fa8bit u0(A,B,C,Sum,Carry);


      always
	begin

	   A=$random;

	   B=$random;

	   C=$random;

	   #10;


	        end // always begin
      endmodule  
