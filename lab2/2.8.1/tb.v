module tb();
  reg d,En,rst;
  wire q;
  
dlatch u0(.d(d),.En(En),.rst(rst),.q(q));
  
always
begin

d= 1'b1;
En= 1'b0;
rst= 1'b1;
#10

d= 1'b1;
En= 1'b1;
rst= 1'b1;
#10

d= 1'b1;
En= 1'b1;
rst= 1'b0;
#10

d= 1'b1;
En= 1'b0;
rst= 1'b1;
#10

d= 1'b1;
En= 1'b1;
rst= 1'b1;
#10

d= 1'b1;
En= 1'b1;
rst= 1'b0;
#10

d= 1'b0;
En= 1'b1;
rst= 1'b0;
#10

d= 1'b0;
En= 1'b1;
rst= 1'b1;
#10

d= 1'b1;
En= 1'b1;
rst= 1'b0;
#10;
end

endmodule