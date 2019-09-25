module tb();

reg [3:0]A;
reg En;
wire [15:0]Y;
decoder4x16 u0(.A(A),.En(En),.Y(Y));

always 
begin

A= $random;
En= $random;
 #10;
end

endmodule