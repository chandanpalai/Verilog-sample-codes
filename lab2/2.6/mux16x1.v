module mux16x1(I,S,Y);
  input [15:0]I;
  input [3:0]S;
  output reg Y;
  
  always@(*)

case(S)
  
  0 : Y = I[0];
  1 : Y = I[1];
  2 : Y = I[2];
  3 : Y = I[3];
  4 : Y = I[4];
  5 : Y = I[5];
  6 : Y = I[6];
  7 : Y = I[7];
  8 : Y = I[8];
  9 : Y = I[9];
  10 : Y = I[10];
  11 : Y = I[11];
  12 : Y = I[12];
  13 : Y = I[13];
  14 : Y = I[14];
  15 : Y = I[15];
  default: Y=0;

endcase

endmodule  