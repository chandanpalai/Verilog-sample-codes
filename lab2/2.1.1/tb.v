module tb();

reg A,B,En;
wire [3:0]Y;

decoder2x4 u0(.A(A),.B(B),.En(En),.Y(Y));

always 
begin

A= $random;
B= $random;
En= $random;
 #10;
end

endmodule