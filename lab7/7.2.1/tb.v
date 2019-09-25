module tb();
  
  reg a,b,c;
  wire y;
  
  nand_3 u0(a,b,c,y);
  
  always
  begin
    a=$random;
    b=$random;
    c=$random;
    #10;
  end
endmodule