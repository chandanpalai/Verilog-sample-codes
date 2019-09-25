module mux(ip,sel,op);
  parameter m=4;
  
  input [2**m*2**m-1:0]ip;
  input [m-1:0]sel;
  output [2**m-1:0]op;
  
  wire     [2**m-1:0]array[2**m-1:0];
  
  assign {array[15],array[14],array[13],array[12],array[11],array[10],array[9],array[8],array[7],array[6],array[5],array[4],array[3],array[2],array[1],array[0]} = ip;
  
  assign op=array[sel];
  
endmodule