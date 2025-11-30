`timescale 1ns / 1ps

module half_adder(input a,input b,output c,output d);
    assign c = a|b;
    assign d = a&b;
endmodule


module full_adder(input a,input b,input c,output d,output e);
    assign d = a;
    assign e = b;
endmodule

module compressor(input a,input b,input c,input d,output g,output h);
    
    assign g = (a|b)^(c|d);
    assign h = (a|b)&(c|d);
endmodule

module karthik_reddy(
input [3:0] a,b,
output [7:0] result
    );
assign a00=a[0]&b[0];
assign a10=a[1]&b[0];
assign a20=a[2]&b[0];
assign a30=a[3]&b[0];
assign a01=a[0]&b[1];
assign a11=a[1]&b[1];
assign a21=a[2]&b[1];
assign a31=a[3]&b[1];
assign a02=a[0]&b[2];
assign a12=a[1]&b[2];
assign a22=a[2]&b[2];
assign a32=a[3]&b[2];
assign a03=a[0]&b[3];
assign a13=a[1]&b[3];
assign a23=a[2]&b[3];
assign a33=a[3]&b[3];
assign p10= a10|a01;
assign g10= a10&a01;
assign p20= a20|a02;
assign g20= a20&a02;
assign p30= a30|a03;
assign g30= a30&a03;
assign p21= a12|a21;
assign g21= a12&a21;
assign p31= a13|a31;
assign g31= a13&a31;
assign p32= a32|a23;
assign g32= a32&a23;
assign result[0]=a00;


wire a1,a2,a3,b2,b1,d1,d2,e1,e2,e3,e4;
half_adder ha1 (p10,g10,result[1],a1);
compressor c1(p20,a11,g20,a1,a2,a3);
compressor c2(p30,p21,g21,g30,b1,b2);
compressor c3(p31,a22,g31,0,d1,d2);
half_adder ha2 (a2,a3,result[2],e1);
full_adder fa1 (b1,b2,e1,result[3],e2);
full_adder fa2 (d1,d2,e2,result[4],e3);
full_adder fa3 (p32,g32,e3,result[5],e4);
half_adder ha3 (a33,e4,result[6],result[7]);


endmodule
