module tb();

reg [7:0]I;
wire [2:0]Y;

encoder u0(I,Y);

always
begin

I=$random;

#10;

end

endmodule