module dlatch(d,En,rst,q);
  input d,En,rst;
  output reg q;
  
  always @(rst,En,d)
  begin
  
  if (rst)
    begin
    q=0;
  end
  else if (En)
    begin
    q=d;
  end
end
  endmodule