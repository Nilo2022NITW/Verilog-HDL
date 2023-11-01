`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 12:58:35
// Design Name: 
// Module Name: bit16x1_tb
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


module MUX_test;
 reg [2:0] x;
   wire z;
  MUX_2X1 M1 (x[0], x[1], x[2], z);
   initial
     begin
          $display("\t\t Time\tSelect  A B \t Z");
          $monitor($time,"\t %b \t%b %b \t %b", x[2], x[0], x[1], z);
          x = 3'O0;
      #5 x = 3'O1;
      #5 x = 3'O2;
      #5 x = 3'O3;
      #5 x = 3'O4;
      #5 x = 3'O5;
      #5 x = 3'O6;
      #5 x = 3'O7;
      #5 $finish;
    end
endmodule
