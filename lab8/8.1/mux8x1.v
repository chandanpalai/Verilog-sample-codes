`include "mux_prim.v"
module mux_8x1(y,i0,i1,i2,i3,i4,i5,i6,i7,sel2,sel1,sel0);
  output y;
input i0,i1,i2,i3,i4,i5,i6,i7;
input sel2,sel1,sel0;

mux_prim(y,i0,i1,i2,i3,i4,i5,i6,i7,sel2,sel1,sel0);

endmodule