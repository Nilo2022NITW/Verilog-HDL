`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07.09.2023 11:09:04
// Design Name: 
// Module Name: 8bitparity_tb
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


module bitx8parity_tb();
reg D0,D1,D2,D3,D4,D5,D6,D7;
wire even,odd;

jparityGenerator uut(D0,D1,D2,D3,D4,D5,D6,D7,even,odd);

initial begin 

#10 D0=0;D1=1;D2=0;D3=0;D4=1;D5=1;D6=0;D7=1;
#10 D0=0;D1=0;D2=0;D3=1;D4=0;D5=0;D6=1;D7=1;
#10 D0=1;D1=1;D2=0;D3=1;D4=1;D5=1;D6=1;D7=1;
#10 D0=0;D1=1;D2=1;D3=1;D4=1;D5=1;D6=0;D7=1;
#10 D0=0;D1=1;D2=0;D3=1;D4=0;D5=1;D6=0;D7=0;
#10 D0=1;D1=0;D2=1;D3=0;D4=1;D5=1;D6=1;D7=0;
#10 D0=1;D1=1;D2=0;D3=0;D4=1;D5=0;D6=1;D7=0;
#10 $finish;
end 
endmodule


