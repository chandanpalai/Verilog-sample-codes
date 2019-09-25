module decoder(sel,en,op);
  parameter m=4;
  
  input [m-1:0]sel;
  input en;
  output [2**m-1:0]op;
  
  wire [2**m-1:0]temp;
  
  assign temp=16'b01 & en;
  
  assign op=temp << sel;
  
endmodule