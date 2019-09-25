module sr_nand(S,R,En,Q,not_Q);

input S,R,En;
output Q,not_Q;

wire temp0,temp1,temp2,temp3;

nand u0(temp0,temp1,temp2);
nand u1(temp1,temp0,temp3);

nand u2(temp2,S,En);
nand u3(temp3,R,En);

assign Q= temp0;
assign not_Q= temp1;
endmodule