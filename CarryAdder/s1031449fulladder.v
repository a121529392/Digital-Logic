
module top (A , B, Cin, Sum,Cout);

input A,B,Cin;
output Sum,Cout;
assign Sum =Cin^(A^B);
assign Cout=Cin&(A^B)+A&B;

endmodule 
module s1031449fulladder(a,a1,a2,a3, b,b1,b2,b3, c, d,e,c1,c2,c3,d1,d2,d3);
input a, b,e,a1,a2,a3,b1,b2,b3;
output c, d,c1,c2,c3,d1,d2,d3;
top mod(a, b,e, c, d);
top mod1(a1, b1,d, c1, d1);
top mod2(a2, b2,d1, c2, d2);
top mod3(a3, b3,d2, c3, d3);
endmodule


