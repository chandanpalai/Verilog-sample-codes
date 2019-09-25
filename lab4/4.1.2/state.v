module state_over(ip,clk,rst,op);
  
  input ip,clk,rst;
  output reg op;
  localparam idle=3'b000,S1=3'b001,S10=3'b010,S101=3'b011,S1011=3'b100;
  reg [2:0] state;
  
  always@(posedge clk)
  if(rst)
    begin
    state=idle;             //(idle)
    op=1'b0;
     end
     

else 
  begin 
    case (state)
      0 : if(ip)
        begin
          state=S1;          //(S1)
          op=1'b0;
        end
        else
          begin
          state=idle;           //(idle)
          op=1'b0;
        end
        
      1 : if(ip)
        begin
          state=S1;           //(S1)
          op=1'b0;
        end
        else
          begin
          state=S10;            //(S10)
          op=1'b0;
        end
        
       2 : if(ip)
        begin
          state=S101;              //(S101)
          op=1'b0;
        end
        else
          begin
          state=idle;               //(idle) 
          op=1'b0;
        end
        
       3 : if(ip)
        begin
          state=S1011;                 //(S1011)
          op=1'b0;
        end
        else
          begin
          state=S10;                  //(S10)
          op=1'b0;
        end
 
        4 : if(ip)
        begin
          state=S1;                 //(S1)
          op=1'b0;
        end
        else
          begin
          state=S10;                  //(S10)
          op=1'b1;
        end  
        
        default : $display("no more states");
        
     endcase
     
   end
     
   
 endmodule 