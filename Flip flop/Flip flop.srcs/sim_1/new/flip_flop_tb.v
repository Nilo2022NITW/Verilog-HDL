`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 10:33:07
// Design Name: 
// Module Name: flip_flop_tb
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


module flip_flop_tb();
reg s,r,clk;
wire q,qbar;
sr_ff uut(s,r,clk,q,qbar);
initial begin 
clk=1;
forever#10 clk=-clk;
end 
initial begin
s=1;r=0;
#100 s=0;r=1;
#100 s=0;r=0;
#100 s=1;r=1;
#100 $finish;
end
endmodule
