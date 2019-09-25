module fifo(din,clk,rst,we,re,full,emp,dout);
  input [7:0] din;
  input clk,rst,we,re;
  output reg full,emp;
  output reg [7:0]dout;
  
  reg [7:0]waddr,raddr;
  reg [7:0]mem[127:0];
  integer count,count1,count2;
  
  always@(posedge clk,posedge rst)
  begin
    if (rst)
      begin
        count=-1;
        count1=-1;
        count2=-1;
      end
    else if (we==1 && full==0)
      begin
        count=count+1;
        count1=count1+1;
        waddr=count1;
        mem[waddr]=din;
      end
      
    else if (re==1 && emp==0)
      begin
        count2=count2+1;
        raddr=count2;
        dout=mem[raddr];
         count=count-1;
      end
	  
	else if (re==1 && emp==0)
      begin
        count2=count2+1;
        raddr=count2;
        dout=mem[raddr];
         count=count-1;
	  end
    end
      
  
  always@(posedge clk,posedge rst)
  begin
    if (rst)
      begin
        full=0;
        emp=1;
      end
    else if (count==-1)
      emp=1;
    else if (count==127)
      full=1;
    else
      begin
        full=0;
        emp=0;
      end
  end
  
endmodule