Design code 
module jparityGenerator(
input D0,D1,D2,D3,D4,D5,D6,D7,
output even,odd
);
  assign even =(((((D0^D1)^D3)^D4)^D5)^D6)^D7;
  assign odd=~even;
  
endmodule

Testbench code
module bitx8parity_tb();
reg D0,D1,D2,D3,D4,D5,D6,D7;
wire even,odd;

jparityGenerator uut(D0,D1,D2,D3,D4,D5,D6,D7,even,odd);

initial begin 

#10 D0=0;D1=1;D2=0;D3=0;D4=1;D5=1;D6=0;D7=1;
#10 D0=0;D1=0;D2=0;D3=1;D4=0;D5=0;D6=1;D7=1;
#10 D0=1;D1=1;D2=0;D3=1;D4=1;D5=1;D6=1;D7=1;
#10 D0=0;D1=1;D2=1;D3=1;D4=1;D5=1;D6=0;D7=1;
#10 D0=0;D1=1;D2=0;D3=1;D4=0;D5=1;D6=0;D7=0;
#10 D0=1;D1=0;D2=1;D3=0;D4=1;D5=1;D6=1;D7=0;
#10 D0=1;D1=1;D2=0;D3=0;D4=1;D5=0;D6=1;D7=0;
#10 $finish;
end 
endmodule
