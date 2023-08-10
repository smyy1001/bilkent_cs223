// 1-to-2 Decoder
module decoder_1to2(input logic in, en, output logic [1:0] out);
always_comb begin
    if(en) begin
        case(in)
            1'b0: out = 2'b10;
            1'b1: out = 2'b01;
            default: out = 2'b00;
        endcase
    end
    else begin
        out = 2'b00;
    end
end
endmodule



// 2-to-4 Decoder
module decoder_2to4(input logic [1:0] in, 
                  input logic en,
                  output logic [3:0] out);
wire [1:0] temp1;
decoder_1to2 u0(.inn(in[1]), .en(en), .oout(temp1) );
decoder_1to2 u1(.inn(in[0]), .en(temp1[0]), .oout(out[1:0]));
decoder_1to2 u2(.inn(in[0]), .en(temp1[1]), .oout(out[3:2]));
endmodule
