module sr_nand(S,R,En,Pre,Rst,Q,not_Q);

input S,R,En,Pre,Rst;
output Q,not_Q;

wire temp0,temp1,temp2,temp3,temp4,temp5,temp6,temp7;

mux2x1 u0(.I({1'b1,temp0}),.S(Pre),.Y(temp4));
mux2x1 u1(.I({1'b0,temp4}),.S(Rst),.Y(temp5));
mux2x1 u2(.I({1'b0,temp1}),.S(Pre),.Y(temp6));
mux2x1 u3(.I({1'b1,temp6}),.S(Rst),.Y(temp7));

nand u4(temp0,temp7,temp2);
nand u5(temp1,temp5,temp3);

nand u6(temp2,S,En);
nand u7(temp3,R,En);

assign Q= temp5;
assign not_Q= temp7;

endmodule