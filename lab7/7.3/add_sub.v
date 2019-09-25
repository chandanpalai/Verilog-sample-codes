module add_sub(a,b,cin,add);
  output [3:0] add;
input [3:0] a;
input [3:0] b;
input cin;
assign add = a + b + cin;
endmodule