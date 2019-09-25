module tbsr();

reg S,R,En;
wire Q,not_Q;

sr_nor USR(S,R,En,Q,not_Q);

always
begin

S= $random;
R= $random;
En= $random;
#10;

end

endmodule