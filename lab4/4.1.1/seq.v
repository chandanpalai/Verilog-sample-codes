module mela_non(ip,clk,g_rst,set,op);
  parameter m=5;
  parameter [m-1:0]seq=5'b01101;
 // parameter seq=5'b10110;
  input ip,clk,g_rst,set;
  output op;
  wire [m-2:0]temp;
  wire[m-1:0] cot;
  wire and_ip,orrst;
 genvar i,j;
  generate for(i=m-2;i>=0;i=i-1)
    begin:loop1
      if (i==m-2) 
		dff ui(ip,clk,orrst,set,temp[i]);
     else if (i<m-2||i>=0)
     dff ui(temp[i+1],clk,(seq[i]&orrst),((~seq[i])& orrst),temp[i]); 
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
 dff ui(and_ip,clk,0,0,op);
 //assign and_ip={temp[0],(~temp[1]),temp[2],temp[3],(~ip)};
 assign and_ip=& cot;
 
 assign orrst=g_rst | and_ip;
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
  