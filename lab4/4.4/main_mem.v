module main_mem(d,clk,we_re,add,q);
  parameter m=4;
  input [2**m-1:0]d;
  input [m-1:0]add;
  input clk,we_re;
  output [2**m-1:0]q;
  
  wire [2**m-1:0]temp,tempout;
  wire [2**m*2**m-1:0]tempm;
  
  
  //wire     [2**m-1:0]array[2**m-1:0];
  
  //assign tempm = {array[15],array[14],array[13],array[12],array[11],array[10],array[9],array[8],array[7],array[6],array[5],array[4],array[3],array[2],array[1],array[0]} ;
  
  decoder u0(.sel(add),.en(we_re),.op(temp));
  mem u1(.d(d),.clk(clk),.en(temp),.q(tempm));
  mux u2(.ip(tempm),.sel(add),.op(tempout));
  pipo u3(.d(tempout),.clk(clk),.en(1'b1),.q(q));
  
endmodule