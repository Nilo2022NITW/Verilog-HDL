`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 12:42:40
// Design Name: 
// Module Name: mux4x1
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


module MUX_2X1(input I0, I1, S, output Y);
  wire sbar, w1, w2, Y;
  not G1 (sbar, S);
  and G2 (w1, I0, sbar);
  and G3 (w2, I1, S);
  or G4 (Y, w1, w2);
endmodule