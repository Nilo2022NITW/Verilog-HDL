#Dataflow program

module fulladderstimuli(
input A,B,Cin,
output S,Cout
);

assign S =A^B^Cin;
assign Cout = ((B&Cin)|(A&B+Cin));
endmodule

#Testbench program
module full_adder_tb();
reg A,B,Cin;
wire Cout,S;

fulladderstimuli uut(A,B,Cin,S,Cout);

initial begin 

#10 A=0;B=0;Cin=1;
#10 A=0;B=1;Cin=0;
#10 A=0;B=1;Cin=1;
#10 A=1;B=0;Cin=0;
#10 A=1;B=0;Cin=1;
#10 A=1;B=1;Cin=0;
#10 $finish;
end 
endmodule
