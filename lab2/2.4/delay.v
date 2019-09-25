module delay (A,B,C,D,E,Y);
  input A,B,C,D,E;
  output Y;
  wire [10:0]temp;
  
  not u0(temp[0],B);
  not u1(temp[1],C);
  not u2(temp[2],D);
  
  and u3(temp[3],temp[0],temp[1]);
  and u4(temp[4],temp[3],A);
  
  and u5(temp[5],A,B);
  and u6(temp[6],temp[5],E);
  or u7(temp[7],temp[4],temp[6]);
  
  and u8(temp[8],temp[0],C);
  and u9(temp[9],C,temp[2]);
  or u10(temp[10],temp[8],temp[9]);
  
  or u11(Y,temp[10],temp[7]);

endmodule

