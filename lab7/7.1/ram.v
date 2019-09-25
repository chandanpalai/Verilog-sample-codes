module ram(inout[7:0]data,input[12:0]addr,input clk,we,oe,ce1,ce2);
reg[7:0] ras;
reg[4:0]cas;
reg[7:0]dout;
//wire[7:0]din;
reg[7:0]mem[255:0][31:0];
//reg[7:0]mem[31:0][7:0];



assign data=dout;


always@(clk,we,oe,ce1,ce2)
begin
 ras=addr[8:1];
 cas={addr[12:9],addr[0]};
if(~we && ~ce1 && ce2)
	 mem[ras][cas]=data; 
	
else if(~oe && ~ce1 && we && ce2)
		dout=mem[ras][cas];
  
		
else if(oe && ~ce1 && we && ce2)
		dout=8'bzzzzzzzz; 
	
else if(~ce2 || ce1)
		dout=8'bzzzzzzzz;
		
		
end


endmodule