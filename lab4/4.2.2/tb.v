module tb();
   parameter m=7;
  parameter [m-1:0]seq=7'b1100101;
  reg ip,clk,rst,set;
  wire op;
 
  mela_over mo(ip,clk,rst,set,op);
  always
  begin
    clk=1;
    #5
    clk=0;
    #5;
  end
  
  initial
  begin
    rst=1;set=0;
    #10
    rst=0;set=0;
    #10;
  end
  
  always
  begin  
    ip=$random;
    #10;
  end
  
endmodule