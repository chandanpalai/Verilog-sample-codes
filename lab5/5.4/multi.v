module multi(a,b,load,rst,clk,q,valid);
  
  input [7:0]a,b;
  input load,rst,clk;
  output [16:0]q;
  output valid;
  wire [15:0]tempa,temp_and,temp_sum;
  wire [16:0]tempp;
	wire [14:0]tempa
  wire tempb,tempcy;
  
  pipol u0(.d(a),.clk(clk),.load(load),.rst(rst),.q(tempa));
  pipor u1(.d(b),.clk(clk),.load(load),.rst(rst),.q(tempb));  
  and_1 u2(.a(tempa),.b(tempb),.c(temp_and));
  fa u3(.A(tempp[15:0]),.B(temp_and),.Sum(temp_sum),.Cin(tempp[16]),.Carry(tempcy));
  pipo u4(.d({tempcy,temp_sum}),.clk(clk),.rst(rst),.q(tempp));
  assign valid= ~(& tempb);
  
  genvar i;
  
   generate for (i=16;i>=0;i=i-1)
	begin:loop
      and u1(q[i],tempp[i],~b);
	end
  endgenerate
  
endmodule
  