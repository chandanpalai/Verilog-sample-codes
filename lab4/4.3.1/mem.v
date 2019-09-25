module mem(d,clk,addr,we,q);
  input [3:0]d,addr;
  input clk,we;
  output reg [3:0]q;
  
  reg [3:0]memry[3:0];
  
  always@(posedge clk)
  begin
    if (we)
    memry[addr]=d;
  else
    q<=memry[addr];
  end
  
endmodule