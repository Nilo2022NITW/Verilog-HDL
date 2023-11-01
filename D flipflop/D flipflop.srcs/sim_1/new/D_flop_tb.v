`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 11:41:23
// Design Name: 
// Module Name: D_flop_tb
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

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: alljobs.co.in
// Engineer: Team ( alljobs.co.in ) 
// Design Name: D Flip Flop
// Module Name: d_flip_flop
// Project Name: D Flip Flop
// Language Used : Verilog HDL.
// Description: A design of D Flip  Flop using Verilog HDL
//////////////////////////////////////////////////////////////////////////////////

// Testbench for D Flip Flop

module tb;
reg D;
reg clk;
reg reset;
wire Q;

d_flip_flop d1(Q,D,clk,reset);

initial 
  begin 
    clk = 1'b0;
    forever #20 clk = ~clk ;
  end
  
initial 
  begin
    reset = 1'b1;
    #40;
    reset = 1'b0;
    #40;
    D = 1'b0;
    #40;
    D = 1'b1;
    #40;
    
    $finish ;
  end
endmodule   
