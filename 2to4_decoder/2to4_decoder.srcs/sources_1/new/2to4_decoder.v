`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 10:31:07
// Design Name: 
// Module Name: 2to4_decoder
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


module decoder2x4(
input A,
input B,
output yo,
output y1,
output y2,
output y3
);
    
    assign yo= (A)&(B);
    assign y1= (A)&(~B);
    assign y2= (~A)&(B);
    assign y3= (~A)&(~B);
endmodule
