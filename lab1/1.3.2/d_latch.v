module D_sr_nor(D,En,Q,not_Q);

input D,En;
output Q,not_Q;

wire not_D;

not u0(not_D,D);
sr_nor u1(.S(D),.R(not_D),.En(En),.Q(Q),.not_Q(not_Q));
endmodule