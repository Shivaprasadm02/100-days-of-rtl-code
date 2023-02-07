module half_adder_tb;
  reg x,y;
  wire s,c;
half_adder DUT(.a(x),.b(y),.sum(s),.carry(c));
  initial
    begin
      x=0;
      y=0;
      #10;
      x=0;
      y=1;
      #10;
      x=1;
      y=0;
      #10;
      x=1;
      y=1;
      #10;
      $finish;
    end
   initial
    $monitor("value of x=%b,y=%b,s=%b,c=%b",x,y,s,c);
endmodule
