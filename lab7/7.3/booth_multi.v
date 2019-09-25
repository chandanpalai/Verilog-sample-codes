module multi(a,b,clk,out,load);
  input [3:0] a,b;
  input clk,load;
  output [7:0]out;

reg [3:0]ta,tb,z;
reg q;
reg [3:0] count;

wire [3:0]add,sub;

add_sub u0(ta,z,0,add);
add_sub u1(~ta,z,1,sub);

always@(posedge clk)
begin
  if (load)
    begin
      ta<=a;
      tb<=b;
      z<=4'b0000;
      q<=0;
      count<=0;
  end
  
else
  begin
    if (count<4)
      begin
    case ({tb[0],q})
      2'b00 : {z,tb,q} <= {z[3],z,tb};
      2'b01 : {z,tb,q} <= {add[3],add,tb};
      2'b10 : {z,tb,q} <= {sub[3],sub,tb};
      2'b11 : {z,tb,q} <= {z[3],z,tb};
    endcase
    count<= count + 1'b1;
  end
end
end
assign out = {z,tb};

endmodule