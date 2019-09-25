module D_latch(D,En,Pre,Rst,Q);
  
input D,En,Pre,Rst;
output Q;

wire D_not;

not (D_not,D);
sr_nand u0(.S(D),.R(D_not),.En(En),.Pre(Pre),.Rst(Rst),.Q(Q),.not_Q() );

endmodule