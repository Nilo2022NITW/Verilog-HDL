#Dataflow program 
module Practise_1(
input A,B,
output C,D,E
);

assign C = ~A;
assign D = ~(A&B);
assign E = ~(A|B);

end module

#testbench program 

module testbench_2();

reg A,B;
wire C,D,E;

Practise_1 uut (A,B,C,D,E);
initial begin 

A=0;
B=0;
#10 A=0;B=1;
#10 A=1;B=0;
#10 A=1;B=1;
#10 $finish;
end 
endmodule
