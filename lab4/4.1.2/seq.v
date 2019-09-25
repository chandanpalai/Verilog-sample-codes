module mela_over(ip,clk,rst,set,op);
  parameter m=5;
  parameter [m-1:0]seq=5'b01101;
 // parameter seq=5'b10110;
  input ip,clk,rst,set;
  output op;
  wire [m-2:0]temp;
  wire[m-1:0] cot;
  wire and_ip;
 genvar i;
  generate for(i=m-2;i>=0;i=i-1)
    begin:loop1
      if (i==m-2) 
		dff ui(ip,clk,rst,set,temp[i]);
     else if (i<m-2||i>=0)
     dff ui(temp[i+1],clk,rst,set,temp[i]); 
     // else  dff ui(temp[i+1],clk,rst,set,temp[i]); 
   end
 endgenerate
 
 generate for(i=m-1;i>=0;i=i-1)
 begin :loop2
 if(i<m-1||i==0)
 assign cot[i]=seq[i]?temp[i]:(~temp[i]);
 else
 assign cot[i]=seq[i]?ip:(~ip);
 end
 endgenerate
 dff ui(and_ip,clk,rst,set,op);
 //assign and_ip={temp[0],(~temp[1]),temp[2],temp[3],(~ip)};
 assign and_ip=& cot;
	//and an(op,temp[0],(~temp[1]),temp[2],temp[3],(~ip));
	endmodule
	//assign temp[0]=op;
    //assign and_op={ip,~
//  always@(posedge clk)
//  begin  
//    if (seq[m-1]==1)
//      begin
//      rst=1;set=0;
//    end
//  else
//    begin
//    rst=1;set=0;
//  end
  