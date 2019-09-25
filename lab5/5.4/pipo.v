module pipo(d,clk,rst,q);
  input [16:0]d;
  input clk,rst;
  output reg [16:0]q;
  
  always@(posedge clk,posedge rst)
  begin
  if (rst)
    q<=0;
  else
      q<=d;
  end
  
endmodule