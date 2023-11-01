`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.10.2023 11:27:45
// Design Name: 
// Module Name: bitx4_carry_tb
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


module bitx4_carry_tb();
reg[3:0]a;
reg[3:0]b;
reg cin;
wire[3:0]sum;
wire cout;
bitx4_carry uut(a,b,cin,sum,cout);
initial begin 
 a=0;b=0;cin=0;
#100 a=5;b=6;cin=1;
#100 $finish;
end 
endmodule

