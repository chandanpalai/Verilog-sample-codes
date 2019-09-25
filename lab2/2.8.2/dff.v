module dff(d,clk,rst,q);
  input d,clk,rst;
  output q;
  
  wire temp;
  
  dlatch u0(.d(d),.En(~clk),.rst(rst),.q(temp));
  dlatch u1(.d(temp),.En(clk),.rst(rst),.q(q));
  
endmodule