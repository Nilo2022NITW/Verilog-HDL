`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 11:25:04
// Design Name: 
// Module Name: encoder 8x3
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


module encoder8x3(
input d0,d1,d2,d3,d4,d5,d6,d7,
output x,y,z
    );
    assign x = d4 || d5 || d6 || d7;
    assign y = d2 || d3 || d6 || d7;
    assign z = d1 || d3 || d5 || d7;
endmodule
