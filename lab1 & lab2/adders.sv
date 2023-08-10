module my_half_adder(input logic a,b, output logic sum, cout);
assign sum = a ^ b;
assign cout = a & b;
endmodule


module my_full_adder(input logic a, b, cin, output logic sum, cout);
wire tempSum, tempCout1, tempCout2;
my_half_adder ha1(a,b,tempSum,tempCout1);
my_half_adder ha2(tempSum, cin, sum, tempCout2);
assign cout = tempCout1 | tempCout2;
endmodule
