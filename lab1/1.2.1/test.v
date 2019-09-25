module tb();

reg [3:0]I;
reg [1:0]S;
wire Y;

mux4x1 u0(I,S,Y);

always
begin

I=$random;
S=$random;

#10;

end

endmodule