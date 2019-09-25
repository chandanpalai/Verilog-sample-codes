module tb();

reg [15:0]I;
reg [3:0]S;
wire Y;

mux16x1 u0(I,S,Y);

always
begin

I=$random;
S=$random;

#10;

end

endmodule