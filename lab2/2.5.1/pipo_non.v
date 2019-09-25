module pipo(d,clk,load,q);
  input [7:0]d;
  input clk,load;
  output [7:0]q;
  
  reg [7:0]temp;
  
   always @(posedge clk) 
   begin
     if (load)
       temp = d;
   else
     begin
      temp ={temp[0],temp[7:1]};
    end
  end
  assign q= temp;
endmodule