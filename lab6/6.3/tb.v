module tb();
  reg d,clk,rst;
  wire q;
  
  top u0(d,clk,rst,q);
  
  initial
  begin
    clk=0;
    #25
    forever
    begin
      clk=0;
      #9
      clk=1;
      #9;
    end
  end
  
  initial
  begin
    rst=1;d=0;
    #10 rst=0;
    forever
    #25 d=$random;
  end
  
endmodule