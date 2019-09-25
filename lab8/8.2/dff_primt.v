primitive dff_primt(q,d,clk,rst,set); 

output q;
reg q;
input d,clk,rst,set;

initial q=0;
table
//d  clk rst set : q : q+;
  ?   ? (01)  ?  : ? : 0;
  ?   ?   1   ?  : ? : 0;
  ?   ? (10)  ?  : ? : -;
  ?   ?   0 (01) : ? : 1;
  ?   ?   0   1  : ? : 1;
  1   ?   0   1  : ? : 1;
  0   ?   0   1  : ? : 1;
  ?   ?   0 (10) : ? : -;
  0  (01) 0   0  : ? : 0;
  0  (X1) 0   0  : ? : 0;
  0  (10) 0   0  : ? : -;
  1  (01) 0   0  : ? : 1;
  1  (X1) 0   0  : ? : 1;
  0  (X0) 0   0  : ? : -;
  0  (1?) 0   0  : ? : -;
  1  (10) 0   0  : ? : -;
(??)  ?   0   0  : ? : -;
  ?  (0X) 0   0  : ? : -;
  
endtable

  
endprimitive