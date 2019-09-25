module tb();
  wire y;
reg i0,i1,i2,i3,i4,i5,i6,i7;
reg sel2,sel1,sel0;

mux_8x1 u0mux_8x1(y,i0,i1,i2,i3,i4,i5,i6,i7,sel2,sel1,sel0);

always
begin
  i0=$random;
  i1=$random;
  i2=$random;
  i3=$random;
  i4=$random;
  i5=$random;
  i6=$random;
  i7=$random;
  sel2=$random;
  sel1=$random;
  sel0=$random;
  #10;
end

endmodule