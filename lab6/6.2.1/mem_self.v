module mem();
  
  integer i;
  reg [7:0] mem [31:0];
  
  initial
  $readmemh("memory1.txt",mem);
  
  initial
  begin
  for(i=0;i<=31;i=i+1)
  $display("mem [%0d] = %h",i,mem[i]);
  end
  
endmodule