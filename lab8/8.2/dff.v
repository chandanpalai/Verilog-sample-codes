`include "dff_primt.v"
module dff(q,d,clk,rst,set);
output q;
input d,clk,rst,set;

dff_primt(q,d,clk,rst,set); 

endmodule