module pipo(d,clk,load,q);
  input [7:0]d;
  input clk,load;
  output reg[7:0]q;
  
  //reg [7:0]temp;
  
   always @(posedge clk ) 
   begin
     if (load)
       q <= d;
   else
     
      q<= {q[0],q[7:1]};
     
 end
 
endmodule