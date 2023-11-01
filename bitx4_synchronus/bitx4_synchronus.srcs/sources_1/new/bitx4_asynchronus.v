`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 12:02:52
// Design Name: 
// Module Name: bitx4_asynchronus
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


module bitx4_asynchronus(
clk,reset,upordown,count);
input clk,reset,upordown;
output[3:0]count;
reg[3:0]count=0;

always@(posedge(clk) or posedge(reset))
begin 
if (reset==1)
count<=0;
else 
if (upordown==1)
if (count==0)
count<=15;
else
count<=count-1;
end 
endmodule

