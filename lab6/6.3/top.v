module top(d,clk,rst,q);
  
  input d,clk,rst;
  output q;
  
  wire temp1,temp2,temp3,temp4;
  
  dff x0(.d(d),.clk(clk),.rst(rst),.q(temp1));
  buf #5 u1(temp2,temp1);
  dff x1(.d(temp2),.clk(clk),.rst(rst),.q(temp3));
  xor_1 u3(.a(temp2),.b(temp3),.c(temp4));
  dff x2(.d(temp4),.clk(clk),.rst(rst),.q(q));
  
  
endmodule