module tb();32
  reg [7:0]A,B;
  reg [2:0]sel;
  wire [7:0]C;
  wire Borrow,Carry,Equal,less,more;
  
alu u0(A,B,sel,Borrow,Carry,Equal,less,more,C);

always
begin
  sel=$random;
  A=$random;
  B=$random;
  
  if (sel==0)
    $display("sum and Carry for input of A=%b and B=%b is Carry=%b and Sum=%b",A,B,Carry,C);
  
  if (sel==1)
    $display("difference and Borrow for input of A=%b and B=%b is Borrow=%b and diffrence=%b",A,B,Borrow,C);
  if (sel==2)
    $display("XOR of A=%b & B=%b is %b",A,B,C);
  
  if (sel==3)
    $display("AND of A=%b & B=%b is %b",A,B,C);
    
  if (sel==4)
    $display("NOR of A=%b & B=%b is %b",A,B,C);
    
  if (sel==5)
    $display("NAND of A=%b & B=%b is %b",A,B,C);
    
  if (sel==6)
          begin
            if(more)
              $display("A is greater than B");
          else if(less)
              $display("A is less than B");
          else
              $display("A is equal to B");
          end    
     #10;
   end
   
 endmodule
          