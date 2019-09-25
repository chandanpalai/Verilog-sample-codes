module decoder2x4(A,B,En,Y);
  
  input A,B,En;
  output [3:0]Y;
  wire [3:0]temp;
  wire [3:0]temp1;
  
  and u0(temp[0],~A,~B);
  and u1(temp1[0],temp[0],En);
  and u2(temp[1],~A,B);
  and u3(temp1[1],temp[1],En);
  and u4(temp[2],A,~B);
  and u5(temp1[2],temp[2],En);
  and u6(temp[3],A,B);
  and u7(temp1[3],temp[3],En);
  
  assign Y[0]= temp1[0];
  assign Y[1]= temp1[1];
  assign Y[2]= temp1[2];
  assign Y[3]= temp1[3];
  
endmodule