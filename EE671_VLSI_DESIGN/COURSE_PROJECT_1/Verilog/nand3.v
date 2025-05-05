module nand3(a,b,c,y);
  input a,b,c;
  output reg y;
    
  always@(*)
  begin
    y <= !(!a&b&c);
  end
  
endmodule

module nand3_tb;
  reg a,b,c;
  wire y;
  
  nand3 dut(a,b,c,y);
  
  initial
  begin
  a=1;b=0;c=0;    //000 
end
  
  always
  begin
    #10 a=1;b=0;c=1;  //001
    #10 a=1;b=1;c=0;  //010
    #10 a=1;b=1;c=1;  //011
    #10 a=0;b=0;c=0;  //100
    #10 a=0;b=0;c=1;  //101
    #10 a=0;b=1;c=0;  //110
    #10 a=0;b=1;c=1;  //111
    #10 a=1;b=0;c=0;  //000
  end
endmodule
