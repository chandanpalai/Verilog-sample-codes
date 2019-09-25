module D_ff(D,clk,Pre,Rst,Q);

input D,clk,Pre,Rst;
output Q;

wire clk_not,temp;

not (clk_not,clk);

D_latch u0(.D(D),.En(clk_not),.Pre(Pre),.Rst(Rst),.Q(temp));
D_latch u1(.D(temp),.En(clk),.Pre(Pre),.Rst(Rst),.Q(Q));

endmodule