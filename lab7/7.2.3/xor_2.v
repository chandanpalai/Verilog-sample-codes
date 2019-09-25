module xor_2(a,b,y);
  
  input a,b;
  output y;
  
  supply1 vdd;
  supply0 gnd;
  
  wire temp1,temp2,temp3,temp4;
  
  pmos p0(temp1,vdd,a);
  pmos p1(temp1,vdd,~b);
  pmos p2(temp4,temp1,~a);
  pmos p3(temp4,temp1,b);
  nmos n0(temp4,temp2,~a);
  nmos n1(temp2,gnd,b);
  nmos n2(temp4,temp3,a);
  nmos n3(temp3,gnd,~b);
  
  pmos p4(y,vdd,temp4);
  nmos n4(y,gnd,temp4);
  
  endmodule