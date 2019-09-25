module fa(A,B,C,Sum,Carry);

   input A,B,C;
   output Sum,Carry;
   
   wire [2:0]temp;
    
   xor u0(Sum,A,B,C);
   and u1(temp[0],A,B);
   and u2(temp[1],A,C);
   and u3(temp[2],B,C);
   or u4(Carry,temp[0],temp[1],temp[2]);

endmodule   
