//implementing 16 bit adder

module adder_16(
  s,co,a,b,ci
);
output reg co;
  input [15:0]a,b;
  input ci;
  always@(a or b or ci)
  {co,s}=a+bi+ci;
endmodule
//testbecnh
module tb();
  reg[15:0]a;
      reg[15:0]b;
      reg ci;


  wire  [15:0] s;
  wire [15:0] co;

  adder_16 uut(s,co,a,b,ci);

  initial begin 
    a =16'h0000;
    b=16'h0000;

    ci=0;

  end

  always #1 b=b+1'b1;
  always #2 a=a+1'b1;

  initial #500 
    $finish();
endmodule
