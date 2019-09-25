module prior_enc(I,Y);
  input [15:0]I;
  output reg [3:0]Y;
 
 always@(I)
 begin 
  if (I[15])
    Y=15;
    else if (I[14])
    Y=14;
    else if (I[13])
    Y=13;
    else if (I[12])
    Y=12;
    else if (I[11])
    Y=11;
    else if (I[10])
    Y=10;
    else if (I[9])
    Y=9;
    else if (I[8])
    Y=8;
    else if (I[7])
    Y=7;
    else if (I[6])
    Y=6;
    else if (I[5])
    Y=5;
    else if (I[4])
    Y=4;
    else if (I[3])
    Y=3;
    else if (I[2])
    Y=2;
    else if (I[1])
    Y=1;
    else if (I[0])
    Y=1;
  else
    Y=0;
    
  end
  
  endmodule