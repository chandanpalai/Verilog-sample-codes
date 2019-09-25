module detect(A,B,gray,excess_3,more,less,no_relation);
  
  input [2:0]A,B;
  output reg gray, excess_3,more,less,no_relation;
  
  always@(A,B)
  begin
  if((A[2]~^B[2] && A[1]~^B[1] && A[0]^B[0])|| (A[2]~^B[2] && A[1]^B[1] && A[0]~^B[0])||(A[2]^B[2] && A[1]~^B[1] && A[0]~^B[0]))
  begin
  gray=1;
  end
  
  else
  gray=0;
  end
  
  always@(A,B)
  begin
  if (((A-B))==3||((B-A)==3))
    begin
    excess_3=1;
    end
  else
    excess_3=0;
  end
  
  always@(A,B)
  begin
      if (A-B==1)
        begin
        more=1;less=0;
      end
      else if (B-A==1)
        begin
        less=1;more=0;
		  end
      /*else
        begin
        no_relation=1;more=0;less=0;
      end*/
  end
  always@(*)
  begin
  if (gray!=1 && excess_3!=1 && more!=1 && less!=1)
    no_relation=1;
	 end
  
endmodule  


 /*always@(gray,excess_3,more,less)
  begin
  if (gray!=1 && excess_3!=1 && more!=1 && less!=1)
    no_relation=1;
  end*/
     