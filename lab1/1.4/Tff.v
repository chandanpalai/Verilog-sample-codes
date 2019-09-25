module T_ff(T,clk,Pre,Rst,Q);
  
input T,clk,Pre,Rst;
output Q;

wire temp,temp_out;

xor (temp,T,temp_out);
D_ff u0(.D(temp),.clk(clk),.Pre(Pre),.Rst(Rst),.Q(temp_out));

assign Q= temp_out;

endmodule