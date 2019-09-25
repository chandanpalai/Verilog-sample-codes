module dlatch(d,En,rst,q);
  input d,En,rst;
  output reg q;
  
  
  always @(En,rst,d)
  begin
  

  if (rst)
    q=0;
  else if (En)
     q=d;
	 
end

endmodule