module tb();
wire q;
reg d,clk=0,rst,set;

dff u0(q,d,clk,rst,set);

always
#5 clk=~clk;

always
begin
  d=$random;
  rst=$random;
  set=$random;
  #10;
end

endmodule