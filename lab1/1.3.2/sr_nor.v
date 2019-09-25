module sr_nor(S,R,En,Q,not_Q);

input S,R,En;
output Q,not_Q;

wire [3:0]temp;

nor u0(temp[0],temp[1],temp[2]);
nor u1(temp[1],temp[0],temp[3]);

and u2(temp[2],S,En);
and u3(temp[3],R,En);

assign Q= temp[1];
assign not_Q= temp[0];

endmodule