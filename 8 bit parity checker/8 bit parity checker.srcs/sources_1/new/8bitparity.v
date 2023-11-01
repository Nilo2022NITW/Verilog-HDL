`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 12:49:36
// Design Name: 
// Module Name: 8bitparity
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


module jparityGenerator(
input D0,D1,D2,D3,D4,D5,D6,D7,
output even,odd
);
  assign even =(((((D0^D1)^D3)^D4)^D5)^D6)^D7;
  assign odd=~even;
  
endmodule
