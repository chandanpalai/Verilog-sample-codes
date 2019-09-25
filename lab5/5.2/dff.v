module dff(d,clk,clr,preset,q);
  
  input d,clk,clr,preset;
  output reg q;
  
  always@(posedge clk)
  q<=d;
  
  always@(clr,preset)
  begin
    if(clr==0)
      assign q=0;
      
    else if (preset)
      assign q=1;
      
    else
      deassign q;
      
  end

endmodule    