module nand_3(a,b,c,y);
  input a,b,c;
  output y;
  
  supply1 vdd;
  supply0 gnd;
  
  wire temp1,temp2;
  
  pmos p0(y,vdd,a);
  pmos p1(y,vdd,b);
  pmos p2(y,vdd,c);
  nmos n0(y,temp1,a);
  nmos n1(temp1,temp2,b);
  nmos n2(temp2,gnd,c);
  
endmodule