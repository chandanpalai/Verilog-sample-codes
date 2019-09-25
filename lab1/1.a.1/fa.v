module fa (A,B,C,Sum,Carry);

input A,B,C;
output Sum,Carry;

assign Sum= A^B^C;
assign Carry= ((A & B) | (A & C) | (B & C));

