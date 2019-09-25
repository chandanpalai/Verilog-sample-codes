module fa4bit (A,B,C,Sum,Carry);
input [3:0]A,B;
input C;
output [3:0]Sum;
output Carry;
wire [2:0]temp;

assign Sum[0]= A[0]^B[0]^C;
assign Sum[1]= A[1]^B[1]^temp[0];
assign Sum[2]= A[2]^B[2]^temp[1];
assign Sum[3]= A[3]^B[3]^temp[2];

assign temp[0]= ((A[0] & B[0]) | (A[0] & C) | (B[0] & C));
assign temp[1]= ((A[1] & B[1]) | (A[1] & temp[0]) | (B[1] & temp[0]));
assign temp[2]= ((A[2] & B[2]) | (A[2] & temp[1]) | (B[2] & temp[1]));
assign Carry= ((A[3] & B[3]) | (A[3] & temp[2]) | (B[3] & temp[2]));

endmodule   
