module tb();
  reg d,clk,clr,preset;
  wire q;
  
  dff u0(d,clk,clr,preset,q);
  
  always

 begin
  
clk=1;
  
#5
  
clk=0;
  
#5;

 end

 initial
  begin
   clr=0;
   preset=1;
   
   force u0.q=0;
   #13 release u0.q;
   clr=1;
   preset=0;
   #17
   
    d=0;
    #16
    d=0;
    #15
    d=1;
    #17
    d=0;
    force u0.q=0;
    #20 release u0.q;
    
    d=1;
    #20
    d=0;
    #20
    d=1;
    #20;
 end
   

 
endmodule
    