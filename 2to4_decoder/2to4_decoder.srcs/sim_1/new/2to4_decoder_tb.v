`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.08.2023 10:38:08
// Design Name: 
// Module Name: 2to4_decoder_tb
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


module decod_tb();
reg A,B;
wire yo,y1,y2,y3;

decoder2x4 uut(A,B,yo,y1,y2,y3);

initial begin
#10 A=0;B=0;
#10 A=0;B=1;
#10 A=1;B=0;
#10 A=1;B=1;
#10 $finish;
end
endmodule
