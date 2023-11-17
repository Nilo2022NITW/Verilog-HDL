`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.10.2023 11:33:35
// Design Name: 
// Module Name: ser_adder
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


module serial_adder 
    (   input clk,reset,  
        input a,b,cin,  
        output reg s,cout  
        );

reg c,flag;

always@(posedge clk or posedge reset)
begin
    if(reset == 1) begin 
        s = 0;
        cout = c;
        flag = 0;
    end else begin
        if(flag == 0) begin
            c = cin;  
            flag = 1;  
        end 
        cout = 0;
        s = a ^ b ^ c;  
        c = (a & b) | (c & b) | (a & c);  
    end 
end

endmodule 