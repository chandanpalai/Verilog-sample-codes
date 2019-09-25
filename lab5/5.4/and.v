module and_1(a,b,c);
  input [15:0]a;
  input b;
  output [15:0]c;
    
  genvar i;
  
  generate for (i=15;i>=0;i=i-1)
	begin:loop
      and u1(c[i],a[i],b);
	end
  endgenerate
  
  endmodule