

4 bit ripply carry adder using behavioural modeling 
Module fulladder ( input wire A,B,Cin ,output reg s , output )
always @(A or B or cin)
begin 
case (A|B|cin)
3'b000:begin s=0;cout=0;end 
3'b001:begin s=1;cout=0;end
3'b010:begin s=1;cout=0;end
3'b100:begin s=1;cout=1;end
endcase
end 
endmodule 

module fourbitadder(x,y,cin,sum,cout);
input [3:0] x,y;
input cin;
output [3:0] sum;
output cout,
wire co,c1,c2;
fulladder a1 (x[0],y[0],cin,sum[0],c0);
fulladder a2 (x[1],y[1],co,sum[1],c1);
fulladder a3(x[2],y[2],c1,sum[2],c2);
fulladder a4 (x(3),y[3],c2,sum[3],cout);
endmodule

TB
module rca_tb();
wire [8:0] sum;
wire cout;
reg[8:0] x,y;
reg cin;
------- test (x,y,cin,sum,cout)
initial begin 
x=4'b1001;y=b'1010; cin=1'b0;
#10 x=4'b1001;y=4'b1010;cin=1'b1;
#10 x=4'b1111;y=4'b1011;cin=1'b0;
#10 x=4'b1000;y=4'b0000;cin=1'b1;
#10 x=4'b1000;y=4'b0001;cin=1'b0;   
#10 x=4'b1000;y=4'b0001;cin=1'b1;  
#10 finish 
end 
endmoudle 
