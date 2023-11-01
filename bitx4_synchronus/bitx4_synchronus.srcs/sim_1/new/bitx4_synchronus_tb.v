`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 12:22:51
// Design Name: 
// Module Name: bitx4_synchronus_tb
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


module bitx4_synchronus_tb();
reg  clk,reset,upordown;
wire [3:0]count;
bitx4_asynchronus uut(clk,reset,upordown,count);

initial begin 
clk=0;
forever #50 clk=~clk;
#50 reset=0;upordown=1;
#50 reset=0;upordown=0;
#50 reset=1;upordown=1;
#50 $finish;
end
endmodule
