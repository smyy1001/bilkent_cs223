// 2x1 Multiplexer
module multiplexer_2to1(input logic s, in, in2, output logic out);
always_comb begin 
    if(s == 1'b0) begin
        out = in;
    end
    else begin
        out = in2;
    end
end
endmodule




// 4x1 Multiplexer
module multiplexer_4to1(input logic [1:0] s, input logic [3:0] in, output logic out);
wire temp1, temp2;
multiplexer_2to1 u0(.s(s[0]), .in(in[0]), .in2(in[1]), .out(temp1));
multiplexer_2to1 u1(.s(s[0]), .in(in[2]), .in2(in[3]), .out(temp2));
multiplexer_2to1 u2(.s(s[1]), .in(temp1), .in2(temp2), .out(out));
endmodule





// 8x1 Multiplexer
module multiplexer_8to1(input logic [2:0] s, input logic [7:0] in, output logic out);

wire temp1, temp2;
wire out1, out2;

multiplexer_4to1 u0(.s(s[1:0]), .in(in[3:0]), .out(temp1));
multiplexer_4to1 u1(.s(s[1:0]), .in(in[7:4]), .out(temp2));
assign out1 = temp1 & ~s[2];
assign out2 = temp2 & s[2];
assign out = out1 | out2;
endmodule
