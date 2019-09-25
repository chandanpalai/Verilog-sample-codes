module tb();
  reg [3:0]d,addr;
  reg clk,we;
  wire [3:0]q;
  
  mem u0(d,clk,addr,we,q);
  
  always
  begin
    clk=0;
    #5
    clk=1;
    #5;
  end
  
  always
  begin
    d=$random;
    addr=$random;
    we=$random;
    #10;
  end
  
endmodule