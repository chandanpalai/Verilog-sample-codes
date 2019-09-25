module dff(d,clk,en,q);
  
  input d,clk,en;
  output reg q;
  
  always@(posedge clk)
  begin
    if (en)
      q<=d;
      
  end
  
endmodule
