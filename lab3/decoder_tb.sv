// 1-to-2 Decoder Testbench
module testbench();
logic in, en;
logic [1:0] out;
decoder_1to2 u0(.in(in), .en(en), .out(out));
initial begin
     in = 0; en = 0;   #10
     in = 1;           #10
     in = 0; en = 1;   #10
     in = 1;           #10
     $finish;
end
endmodule




// 2-to-4 Decoder Testbench
module testbench();
logic en;
logic [1:0] in;
logic [3:0] out;
decoder_2to4 u0(.in(in), .en(en), .out(out));
initial begin
     en = 0; in = 2'b00;  #10
     in = 2'b01;          #10
     in = 2'b10;          #10
     in = 2'b11;          #10
     en = 1; in = 2'b00;  #10
     in = 2'b01;          #10
     in = 2'b10;          #10
     in = 2'b11;          #10
     $finish;
end
endmodule
