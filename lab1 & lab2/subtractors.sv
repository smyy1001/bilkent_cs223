module my_half_subtractor(input logic a, b, output logic diff, bout);
assign diff = a ^ b;
assign bout = ~a & b;
endmodule



module my_full_subtractor(input logic a, b, bin, output logic diff, bout);
wire tempDiff, tempBout1, tempBout2;   
my_half_subtractor hs1(a,b,tempDiff,tempBout1);
my_half_subtractor hs2(tempDiff, bin, diff, tempBout2);
assign bout = tempBout1| tempBout2;
endmodule
