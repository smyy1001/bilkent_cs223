// Method -> F(A,B,C,D)=∑(0,2,5,6,8,10,12,13,15) 
module method(input logic a, b, c, d, output logic out);
wire [3:0] temp_out;
wire [7:0] temp_in;
assign temp_in[0] = ~d;
assign temp_in[1] = (~c&~d) + d;
assign temp_in[2] = ~d;
assign temp_in[3] = 1'b0;
assign temp_in[4] = c^d;
assign temp_in[5] = 1'b0;
assign temp_in[6] = 1'b0;
assign temp_in[7] = 1'b0;

decoder_with_enable_2to4 u0(.in({a,b}), .en(1'b1), .out(temp_out));
multiplexer_8to1 u1(.s(temp_out[2:0]),.in(temp_in), .out(out));
endmodule
