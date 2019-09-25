module mux2x1(I,S,Y);

input [1:0]I;
input S;
output Y;

wire [1:0]temp;
wire not_S;

not u0(not_S,S);
and u1(temp[0],not_S,I[0]);
and u2(temp[1],S,I[1]);
or u3(Y,temp[0],temp[1]);
 
endmodule