module check(d,p);
  parameter m=16;
  input [m-1:0]d;
  output p;

function  xor_1bt(input A,B);
  xor_1bt=A^B;
endfunction  
  
function  parity(input [m-1:0]d);
  integer i;
  begin
    parity=0;
    for(i=0;i<=m-1;i=i+1)
    parity=xor_1bt(parity,d[i]);
  end
endfunction

assign p=parity(d);
  
endmodule                                                                                 