module freq_devide(clk,Pre,Rst,Q);
  
input clk,Pre,Rst;
output Q;

wire temp1,temp2;

T_ff u0(.T(1'b1),.clk(clk),.Pre(Pre),.Rst(Rst),.Q(temp1));
T_ff u1(.T(1'b1),.clk(temp1),.Pre(Pre),.Rst(Rst),.Q(temp2));
T_ff u2(.T(1'b1),.clk(temp2),.Pre(Pre),.Rst(Rst),.Q(Q));


endmodule