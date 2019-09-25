module mux4x1(I,S,Y);

input [3:0]I;
input [1:0]S;
output Y;

wire [1:0]temp;



mux2x1 u0(.I(I[1:0]),.S(S[0]),.Y(temp[0]));
mux2x1 u1(.I(I[3:2]),.S(S[0]),.Y(temp[1]));
mux2x1 u2(.I(temp),.S(S[1]),.Y(Y));

endmodule