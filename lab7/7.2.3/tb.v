module tb();
  
  reg a,b;
  wire y;
  
  xor_2 u0(a,b,y);
  
  always
  begin
    a=$random;
    b=$random;
    #10;
  end
endmodule