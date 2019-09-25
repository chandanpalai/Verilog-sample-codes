module tb();
  
  reg [3:0]ip;
  reg load,rst,en,clk;
  wire [3:0]y;
    
sequence u0(ip,rst,load,en,clk,y);


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
#20
rst=0;en=1;
#100
load=1;ip=4'b1100;
#20
load=0;
#100
rst=1;
#20
rst=0;en=0;
#20
en=1;
#100;

end

initial
$monitor("counter value %b",y); 

endmodule 