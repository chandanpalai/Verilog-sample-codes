module mem();
  
  integer i;
  reg [7:0] mem [31:0];
  
  initial
  $readmemh("memory2.txt",mem,15,28);
  
  initial
  begin
  for(i=0;i<=31;i=i+1)
  $display("mem [%0d] = %h",i,mem[i]);
  end
  
endmodule