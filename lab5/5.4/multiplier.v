module multiplier(a,b,load,rst,clk,q,valid);
  input [7:0]a,b;
  input load,rst,clk;
  output reg [16:0]q;
  output reg valid;
  
  reg [7:0]tempa=8'b00,tempb=8'b00;
  wire [7:0]temp_and;
  reg [15:0]temp=8'b00;
  
  integer i;
  
  assign temp_and=tempb[0]?tempa:8'b00;
  always@(posedge clk,posedge rst)
  if (rst)
    begin
    tempa=0;
    tempb=0;
    q=0;
    valid=0;
    i=0;
    end
  else
    if(load)
    begin
      tempa=a;
      tempb=b;
      temp=16'b00;
      i=0;
      q=0;
    end
    
  else
    begin
      temp=temp_and;
      tempb=tempb>>1;
        if(i<=7)
          begin
            temp=temp<<i;
            q=q+temp;
            i=i+1;
          end
        else
          begin
            i=0;
            temp=0;
          end
          
       if(tempb)
         valid=0;
       else
        valid=1'b1;
        
  end
  
endmodule
         