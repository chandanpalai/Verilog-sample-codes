module mem(d,clk,en,q);
  parameter m=4;
  input [2**m-1:0]d,en;
  input clk;
  output [2**m*2**m-1:0]q;
  
    wire [2**m-1:0]array[2**m-1:0];
	wire [255:0]temp;  
  
  genvar i;
  generate for(i=2**m-1;i>=0;i=i-1)
    begin:loop1
      
      pipo u(.d(d),.clk(clk),.en(en[i]),.q(array[i]));
      
    end
 endgenerate
 
 assign temp = {array[15],array[14],array[13],array[12],array[11],array[10],array[9],array[8],array[7],array[6],array[5],array[4],array[3],array[2],array[1],array[0]};
 assign q=temp;
 endmodule
