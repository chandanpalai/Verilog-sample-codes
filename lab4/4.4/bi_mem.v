module bi_dir(d,clk,we_re,add);
  parameter m=4;
  
  inout [2**m-1:0]d;
  input [m-1:0]add;
  input clk,we_re;
  
  wire [2**m-1:0]temp;
  main_mem u0(.d(d),.clk(clk),.we_re(we_re),.add(add),.q(temp));
  
  bufif0 u1[2**m-1:0] (d,temp,we_re);
  
endmodule