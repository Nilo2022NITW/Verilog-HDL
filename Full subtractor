#dataflow program 

module full_subtractor(
input a,b,Bin,
output D,Bout
);
assign D=a^b^Bin;
assign Bout = ~(a&b)|(~(a^b)&Bin);
endmodule

#Testbench program 

module full_subtractor_tb();
reg a,b,Bin;
wire D,Bout;

full_subtractor uut(a,b,Bin,D,Bout);

initial begin


#1 a=0;b=0;Bin=0;
#1 a=0;b=0;Bin=1;
#1 a=0;b=1;Bin=0;
#1 a=0;b=1;Bin=1;
#1 a=1;b=0;Bin=0;
#1 a=1;b=0;Bin=1;
#1 a=1;b=1;Bin=0;
#1 $finish;
end
endmodule
