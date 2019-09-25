module tb();
  
  reg d,clk,rst;
  wire q;
  
 dff u0(.d(d),.clk(clk),.rst(rst),.q(q)); 
 always
begin
  clk=1'b0; 
  #5
  clk=1'b1; 
  #5;
end

always
begin
  
 d= $random;
 rst= $random;
 #10;
 
end

endmodule