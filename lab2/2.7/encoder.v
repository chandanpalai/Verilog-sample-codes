module encoder(I,Y);
  input [7:0]I;
  output reg [2:0]Y;

always @(*)

casez (1'b1)

I[0] : Y=7;
I[1] : Y=6;
I[2] : Y=5;
I[3] : Y=4;
I[4] : Y=3;
I[5] : Y=2;
I[6] : Y=1;
I[7] : Y=0;
default : Y = 0;

endcase

endmodule