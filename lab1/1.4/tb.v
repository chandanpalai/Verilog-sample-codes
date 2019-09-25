module d();

reg T,clk,Pre,Rst;
wire Q;

T_ff u0(.T(T),.clk(clk),.Pre(Pre),.Rst(Rst),.Q(Q));

always 
begin
  
  clk=1'b0; 
  #5
  clk=1'b1; 
  #5;
end

always
begin
  Rst= 1'b1;
  Pre= 1'b0;
  T=1'b1;
  #10
  
  Rst= 1'b0;
  Pre= 1'b0;
  T=1'b1;
  #10
  
  Rst= 1'b0;
  Pre= 1'b0;
  T=1'b0;
  #10
  
  Rst= 1'b0;
  Pre= 1'b0;
  T=1'b1;
  #10
  
  Rst= 1'b0;
  Pre= 1'b1;
  T=1'b1;
  #10
  
  Rst= 1'b0;
  Pre= 1'b0;
  T=1'b0;
  #10
  
  Rst= 1'b1;
  Pre= 1'b0;
  T=1'b0;
  #10
  
  Rst= 1'b0;
  Pre= 1'b0;
  T=1'b1;
  #10;

end

endmodule

  
  