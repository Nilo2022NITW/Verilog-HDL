module asynch_up2bit(clk,k,reset,q,qb)
input clk,k,reset;
output [3:0]q,qb;
wire c1,c2,c3;
tff t1(q[0],qb[0],clk,reset);
cg g1 (k, q[0],qb[0],c1);
tff t2(q[1],qb[1],c1,reset);
cg g2 (k, q[1],qb[1],c2);
tff t3(q[2],qb[2],c2,reset);
cg g3 (k, q[2],qb[2],c3);
tff t4(q[3],qb[3],c3,reset);
endmodule;


module tff(q,qb,clk,reset)
output q,qb;
input clk,reset;
dff d1(q,qb,qb,clk,reset)
endmodule

module dff(q,qb,d,clk,reset);
input d,clk,reset;
output q,qb;
wire c1,c2,c3,c4;
nand(c1,c2,c4);
nand(c4,c3,clk,reset);
nand(c3,c4,clk,reset);
nand(c2,c3,d,reset);
nand(q, qb,c4);
nand(qb,q,c3,reset);
endmodule

module cg (x,q,qb,opt)
input x,q,qb;
output opt;
wire w1,w2,x1;
not(x1,x);
and(w1,x,x1);
and(w2,qb,x);
or(opt,w1,w2);
endmodule



module tb_async()
reg clk,k,reset;
wire [3:0]q,qb;
asynch_up2bit uut (clk,k,reset,q,qb);
initial begin
clk=0;k=0;reset=0;
#10 clk=0; k=1;reset=0;
#10 clk=1; k=1;reset=0;
#10 clk=0; k=0;reset=1;
#10 $finish;
end endmodule

to make down, invert k
