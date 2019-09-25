module state_tb();
  
  reg ip,clk,rst;
  wire op;
  
  state_over u0(ip,clk,rst,op);
  
  always
  begin
    clk=1;
    #5
    clk=0;
    #5;
  end
  
  initial
  begin
    rst=1;
    #10
    rst=0;
  end
  
  always
  begin  
    ip=$random;
    #10;
  end
  
endmodule