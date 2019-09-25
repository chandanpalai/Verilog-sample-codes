module sequence (ip,rst,load,en,clk,y);
  
  input [3:0]ip;
  input rst,clk,load,en;
  output reg [3:0]y;
  
//  localparam S1000=4'b1000,S0111=4'b0111,S1011=4'b1011,S0100=4'b0100,S0010=4'b0010,S0101=4'b0101,S1100=4'b1100,S0110=4'b0110,S0011=4'b0011,S1111=4'b1111,S0001=4'b0001,S1110=4'b1110,S1101=4'b1101;
//  reg [3:0] state;
  
  always@(posedge clk,posedge rst)
  if(rst)
    y<=4'b1000;
     else if (load)
			y<=ip;
   else
        if(en)
          begin
   case (y)
     
    4'b1000 : y<=4'b0111;
    4'b0111 : y<=4'b1011;
    4'b1011 : y<=4'b0100;
    4'b0100 : y<=4'b0010;
    4'b0010 : y<=4'b0101;
    4'b0101 : y<=4'b1100;
    4'b1100 : y<=4'b0110;
    4'b0110 : y<=4'b0011;
    4'b0011 : y<=4'b1111;
    4'b1111 : y<=4'b0001;
    4'b0001 : y<=4'b1110;
    4'b1110 : y<=4'b1101;
    4'b1101 : y<=4'b1000;
    default : y<=4'b1000;
    
  endcase

end

endmodule   