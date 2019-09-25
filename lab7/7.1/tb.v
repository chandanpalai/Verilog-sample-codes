module tb;

reg[7:0]din;
wire[7:0]data;
reg clk=0,we,oe,ce1,ce2;
reg[12:0]addr;
ram u0(data,addr,clk,we,oe,ce1,ce2);

//and x0(w_temp,~ce1,~we,ce2);
//and u1(r_temp,ce2,we,~ce1,~oe);

assign data=din;


always #5 clk=~clk;

/*always 
begin
	#10 addr=$random;
	if(~we && ~ce1 && ce2)
		din=$random;
	else if(we && ~ce1 && ~oe && ce1)
		din=8'bzzzzzzzz;
		else if(oe && ~ce1 && we && ce2)
			din=8'bzzzzzzzz; 
else if(~ce2 || ce1)
			din=8'bzzzzzzzz;
		
end
*/
always
begin
		we=0;
		oe=1;
		ce1=0;
		ce2=1;
		addr=$random;
		din=$random;
		#20
		we=1;
		oe=0;
		ce1=0;
		ce2=1;	
		din=8'bzzzzzzzz;
		#20;
		ce1=1;
		#20
		ce2=0;
		#20;
		
end
endmodule