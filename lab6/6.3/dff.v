module dff(d,clk,rst,q);
  
  input d,clk,rst;
  output reg q;
  
  always @(posedge clk,posedge rst)
  begin
  if (rst)
    q<=0;
  else
    q<=d;
  end
  
  specify
  $setuphold(posedge clk,d,3,4);
  endspecify
  
endmodule    