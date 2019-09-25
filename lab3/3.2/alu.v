module alu(A,B,sel,Borrow,Carry,Equal,less,more,C);
  
  input [7:0]A,B;
  input [2:0]sel;
  output reg [7:0]C;
  output reg Borrow,Carry,Equal,less,more;
  reg [7:0]temp,temp1;  
  always@(*)
   
  case (sel)  
  
  0 : assign {Carry,C}= A+B;
  1 : assign {Borrow,C}= A-B;
  2 : C=A ^ B;
  3 : C=A & B;
  4 : begin
      temp=A|B;
      C=~temp;
    end
  5 : begin
      temp1=A & B;
      C=~temp1;
    end
  6 : begin         
      if (A>B)
      begin
      less=1'b0;
      more=1'b1;
      Equal=1'b0;    
    end
    else if (A<B)
    begin
      less=1'b1;
      more=1'b0;
      Equal=1'b0;      
    end
    else
      begin
      less=1'b0;
      more=1'b0;  
      Equal=1'b1;
    end  
  end  
  default: $display("invalid choice");

endcase

endmodule