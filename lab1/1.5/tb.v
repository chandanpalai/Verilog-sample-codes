module tb();

reg clk,Pre,Rst;
wire Q;

freq_devide u0(.clk(clk),.Pre(Pre),.Rst(Rst),.Q(Q));

always
begin
  clk=1'b0; 
  #5
  clk=1'b1; 
  #5;
end
initial
begin
Rst=1'b1;
Pre=1'b0;
#10;
end

endmodule
  