module tb();
  reg [7:0] din;
  reg clk,rst,we,re;
  wire full,emp;
  wire [7:0]dout;
  
  fifo u0(din,clk,rst,we,re,full,emp,dout);
  
  integer i;
  
  always
  begin
    clk=0;
    #5
    clk=1;
    #5;
  end
  
  initial
  begin
    rst=1;
    #5 rst=0;
  end
  
  always
    begin
    for(i=0;i<127;i=i+1)
    begin  din=$random;  
    we=1;
	#30
	we=0;re=1;
	#20;
	end
    re=1;we=0;
    #50
     re=0; 
   
    end
  
  
endmodule
