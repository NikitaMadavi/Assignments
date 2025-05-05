module dfxn(clk,d,q); // negative edge dff
  input clk,d;
  output reg q;
  
  always@(negedge clk)
  begin
    q <= d;
  end
  
endmodule

module dfxn_tb;
  reg clk,d;
  wire q;
  
  dfxn dut(clk,d,q);
  
  initial clk =1;
  
  always #5 clk=~clk;
  
  always
  begin
    #10 d = $random;
  end
endmodule
