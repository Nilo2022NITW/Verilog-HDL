`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 14.09.2023 12:09:23
// Design Name: 
// Module Name: 8xbitselectadder
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


module full_adder(
input a,b,cin,
output sum,cout
    );
    assign sum = (a^b)^cin;
    assign cout =(a&b)||(b&cin)||(cin&a);
endmodule

module ripple_carry_adder(
input a1,a2,a3,a4,b1,b2,b3,b4,cin,
output s1,s2,s3,s4,cout);
wire c1,c2,c3;

full_adder F1(a1,b1,cin,s1,c1);
full_adder F2(a2,b2,c1,s2,c1);
full_adder F3(a3,b3,c2,s3,c3);
full_adder F4(a4,b4,c3,s4,cout);
endmodule

module mux(
input a,b,s,
output z 
);

assign z = (a&s)||(b&~s);
endmodule

module carry_select_adder(
input [7:0] a,b,
input c0,c1,c2,
output s1,s2,s3,s4,cout
);

wire s01,s02,s03,s04,s11,s12,s13,s14,s21,s22,s23,s24;
wire c00,c01,c02;

ripple_carry_adder R1(a[0],a[1],a[2],a[3],b[0],b[1],b[2],b[3],c1,s11,s12,s13,s14,c01);
ripple_carry_adder R2(a[4],a[5],a[6],a[7],b[4],b[5],b[6],b[7],c2,s21,s22,s23,c24,c02);
mux M1(s01,s11,c02,s1);
mux M2(s02,s12,c02,s2);
mux M3(s03,s13,c02,s3);
mux M4(s04,s14,c02,s4);
mux M5(c00,c01,c02,cout);

endmodule 