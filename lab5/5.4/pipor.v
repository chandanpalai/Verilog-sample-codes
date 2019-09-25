module pipor(d,clk,load,rst,q);
  input [7:0]d;
  input clk,rst,load;
  output reg q;
  reg [7:0]temp;
  
  always@(posedge clk,posedge rst)
  begin
  if (rst)
    temp<=0;
  else
    begin
    if (load)
      temp<=d;
    else     
      temp<={1'b0,temp[7:1]};
    
     q<=temp[0];
    end
  end
  
endmodule