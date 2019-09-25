module tb();
   parameter m=7;
  parameter [m-1:0]seq=7'b1100101;
  reg ip,clk,g_rst,set;
  wire op;
 
  mela_non mo(ip,clk,g_rst,set,op);
  always
  begin
    clk=1;
    #5
    clk=0;
    #5;
  end
  
  initial
  begin
    g_rst=1;set=0;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=0;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=0;
    #10
    g_rst=0;set=0;ip=0;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=1;
    #10
    g_rst=0;set=0;ip=0;
    #10;
    
  end
  
 // always
//  begin  
//    ip=$random;
//    #10;
//  end
  
endmodule