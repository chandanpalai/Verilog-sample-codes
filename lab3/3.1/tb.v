module tb();

reg [15:0]I;
wire [3:0]Y;

prior_enc u0(I,Y);

always
begin

I=$random;

#10;
$write("for write Y=%b I=%b \n",Y,I);
end

endmodule