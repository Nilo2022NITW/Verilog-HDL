#Dataflow program 

module Half_subtractor(
input a,b,
output D,B
);

assign D = (a^b);
assign B = ~a^b;
endmodule

#testbench program 

module halfsubtractor();
reg a,b;
wire D,B;

Half_subtractor uut(a,b,D,B);

initial begin

#1 a=0;b=1;
#1 a=1;b=0;
#1 a=1;b=1;
#1 $finish;
end 
endmodule
