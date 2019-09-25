module tb();

reg D,En;
wire Q,not_Q;

D_sr_nand u0(D,En,Q,not_Q);

always
begin

D= $random;
En= $random;
#10;

end

endmodule