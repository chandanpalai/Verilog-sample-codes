module mux2x1(I,S,Y);

input [1:0]I;
input S;
output Y;

assign Y=S?I[1]:I[0];

endmodule