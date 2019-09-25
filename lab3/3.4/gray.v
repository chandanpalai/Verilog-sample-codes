module detect(A,B,gray,Excess_3, More, Less, no_relation);
  
  input [2:0]A,B;
  output reg gray, Excess_3, More, Less, no_relation;
  
always@(*)
begin

if((A[2]~^B[2] && A[1]~^B[1] && A[0]^B[0])|| (A[2]~^B[2] && A[1]^B[1] && A[0]~^B[0])||(A[2]^B[2] && A[1]~^B[1] && A[0]~^B[0]))
  begin 
    gray=1;
    if((A-B==3)||(B-A==3))
      begin
      Excess_3=1;
      if (A-B==1)
        begin
        More=1;Less=0;no_relation=0;
      end
      else if (B-A==1)
        begin
        Less=1;More=0;no_relation=0;
      end
      else
        begin
        no_relation=0;More=0;Less=0;
      end
      end
    
      
 else if (((A-B))==3||((B-A)==3))
      begin
      Excess_3=1;
      gray=0;    
    if (A-B==1)
        begin
        More=1;Less=0;no_relation=0;
      end
      else if (B-A==1)
        begin
        Less=1;More=0;no_relation=0;
      end
      else
        begin
        no_relation=0;More=0;Less=0;
       end
     end
  
else if (A-B==1)
        begin
        More=1;Less=0;no_relation=0;Excess_3=0;gray=0;   
      end 
    else if (B-A==1)
        begin
        Less=1;More=0;no_relation=0;Excess_3=0;gray=0;
      end
      else
        begin
        no_relation=1;More=0;Less=0;Excess_3=0;gray=0;
    end
end
end
endmodule
