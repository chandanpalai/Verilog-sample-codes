module uni_shift(d,clk,load,shift_en,sel,q);
  
  input [15:0]d;
  input [1:0]sel;
  input clk,load,shift_en;
  output reg [15:0]q;
  
  reg [15:0]temp;
  
  always@(posedge clk)
  begin
    if (clk)
      if (load)
        temp=d;
        
      else if (shift_en)
        
        if (sel==2'b00)
        temp={1'b0,temp[15:1]};
      else if (sel==2'b01)
        temp={temp[14:0],1'b0};
      
    else if (sel==2'b10)
        temp={temp[0],temp[15:1]};
      else if (sel==2'b11)
        temp={temp[14:0],temp[15]};
     
     q<=temp; 
end
  
endmodule