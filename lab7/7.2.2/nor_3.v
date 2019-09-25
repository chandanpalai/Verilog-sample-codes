module nor_3(a,b,c,y);
  input a,b,c;
  output y;
  
  supply1 vdd;
  supply0 gnd;
  
  wire temp1,temp2;
  
  pmos p0(temp1,vdd,a);
  pmos p1(temp2,temp1,b);
  pmos p2(y,temp2,c);
  nmos n0(y,gnd,a);
  nmos n1(y,gnd,b);
  nmos n2(y,gnd,c);
 
 endmodule