module tb();
  reg [15:0]d;
  reg [1:0]sel;
  reg clk,load,shift_en;
  wire [15:0]q;
  
  uni_shift u0(d,clk,load,shift_en,sel,q);
  
  always
  begin
    clk=1'b0;
    #5
    clk=1'b1;
    #5;
  end
  
  always
  begin
    
  load=1'b1;
  shift_en=1'b0;
  sel=2'b00;
  d=16'b1010011011100101;
  #20
  
  load=1'b0;
  shift_en=2'b01;
  sel=2'b00;
  d=16'b1010011011100101;
  #50
  
  load=2'b10;
  shift_en=1'b1;
  sel=2'b01;
  d=16'b1010011011100101;
  #50
  
  load=1'b1;
  shift_en=1'b0;
  sel=2'b00;
  d=16'b1110011010110110;
  #20
  
  load=1'b0;
  shift_en=1'b1;
  sel=2'b10;
  d=16'b1010011011100100;
  #60
  
  load=1'b0;
  shift_en=1'b1;
  sel=2'b11;
  d=16'b1010011011100100;
  #60;
  
end

endmodule
