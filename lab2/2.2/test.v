module tb();

reg [7:0]I;
wire [2:0]Y;

prio_enc u0(.I(I),.Y(Y));

always 
begin

I= $random;

 #10;
end

endmodule