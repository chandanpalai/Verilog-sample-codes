module dff(d,clk,rst,set,q);
  
  input d,clk,rst,set;
  output reg q;
  
  always@(posedge clk)
  begin
  if (rst) 
    q<=0;
  else if (set)
    q<=1;
  else 
    q<=d;
  end
  
endmodule

    