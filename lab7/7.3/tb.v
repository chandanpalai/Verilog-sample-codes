module tb();
  reg [3:0] a,b;
  reg clk=1,load;
  wire [7:0]out;
  
  multi u0(a,b,clk,out,load);
  
  always
  #5 clk=~clk;
  
  always
  begin
    a=$random;
    b=$random;
    load=1;
    #10
    load=0;
    #50;
  end
  
endmodule