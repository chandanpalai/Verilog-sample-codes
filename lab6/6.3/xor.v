module xor_1(a,b,c);
  input a,b;
  output c;
  
  wire temp1,temp2;
  
  and #4 u0(temp1,a,~b);
  and #4 u1(temp2,~a,b);
  or #3 u2(c,temp1,temp2);
  
endmodule 