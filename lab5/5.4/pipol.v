module pipol(d,clk,load,rst,q);
  input [7:0]d;
  input clk,rst,load;
  output reg [14:0]q;
  
  always@(posedge clk,posedge rst)
  begin
  if (rst)
    q<=0;
  else
    begin
    if (load)
      q<=d;
    else
      q<={q[13:0],1'b0};
    end
  end
  
endmodule