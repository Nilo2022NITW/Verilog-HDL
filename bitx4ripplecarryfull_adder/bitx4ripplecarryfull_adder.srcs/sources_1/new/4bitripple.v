`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 11:57:33
// Design Name: 
// Module Name: 4bitripple
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


module Adder4bit(A,

                 B,

                 Cin,

                 Sum,

                 Cout

                );

input  [3:0]  A,

              B;

input         Cin;

output  [3:0] Sum;

output        Cout;

wire [2:0] transferC;

fullAdder FA1 ( .In1(A[0]),

                .In2(B[0]),

                .Cin(Cin),

                .Sum(Sum[0]),

                .Cout(transferC[0])

               );

fullAdder FA2 ( .In1(A[1]),

                .In2(B[1]),

                .Cin(transferC[0]),

                .Sum(Sum[1]),

                .Cout(transferC[1])

                );

fullAdder FA3 ( .In1(A[2]),

                .In2(B[2]),

                .Cin(transferC[1]),

                .Sum(Sum[2]),

                .Cout(transferC[2])

               );

fullAdder FA4 ( .In1(A[3]),

                .In2(B[3]),

                .Cin(transferC[2]),

                .Sum(Sum[3]),

                .Cout(Cout)

               );

endmodule

