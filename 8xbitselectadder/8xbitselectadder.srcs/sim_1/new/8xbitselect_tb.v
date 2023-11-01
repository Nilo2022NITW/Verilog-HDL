`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 12:31:06
// Design Name: 
// Module Name: 8xbitselect_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module carry_select_adder_sim();
reg [7:0] a,b;
reg c0,c1,c2;
wire s1,s2,s3,s4,cout;

carry_select_adder uut(a,b,c0,c1,c2,s1,s2,s3,s4,cout);

initial begin 

#10 a=8'b11000000;b=8'b11000000;c0=0;c1=1;c2=0;
#10 a=8'b00110000;b=8'b00110000;c0=0;c1=1;c2=0;
#10 a=8'b00001100;b=8'b00001100;c0=0;c1=1;c2=0;
#10 a=8'b00000011;b=8'b00000011;c0=0;c1=1;c2=0;
#10 a=8'b11000000;b=8'b11000000;c0=0;c1=1;c2=0;
#10 a=8'b00110000;b=8'b00110000;c0=0;c1=1;c2=0;
#10 a=8'b00001100;b=8'b00001100;c0=0;c1=1;c2=0;
#10 a=8'b00000011;b=8'b00000011;c0=0;c1=1;c2=0;
#10 $finish;
end
endmodule
