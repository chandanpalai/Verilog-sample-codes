module pipo(d,clk,en,q);
  parameter m=4; 
  input [2**m-1:0]d;
  input clk,en;
  output [2**m-1:0]q;
  
  genvar i;
  
  generate for(i=2**m-1;i>=0;i=i-1)
    begin:loop1
      
      dff u(.d(d[i]),.clk(clk),.en(en),.q(q[i]));
      
    end
 endgenerate
 
 endmodule