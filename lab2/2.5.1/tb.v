module tb();
  reg [7:0]d;
  reg clk,load;
  wire [7:0]q;
  
  pipo u0(.d(d),.clk(clk),.load(load),.q(q));
  
  always
begin
  clk=1'b0; 
  #5
  clk=1'b1; 
  #5;
end

initial
begin
load=1'b1;
d=8'b10011010;
#10

load=1'b0;
d=8'b10011010;
#90

load=1'b1;
d=8'b11010110;
#10

load=1'b0;
d=8'b10011010;
#90;

end

endmodule