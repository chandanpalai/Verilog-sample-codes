module decoder4x16(A,En,Y);
  
  input [3:0]A;
  input En;
  output [15:0]Y;
  wire [15:0]temp,temp1;
  
  assign temp1= 15'b01 & En;
  assign temp=temp1 << A;
  assign Y= temp;
  
endmodule