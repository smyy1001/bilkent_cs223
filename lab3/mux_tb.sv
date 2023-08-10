// 2x1 MUX Testbench
module testbench();
logic s, in, in2, out;
multiplexer_2to1 u0(.s(s), .in(in), .in2(in2), .out(out));
initial begin
        s = 0; in = 0; in2 = 0; #10
                       in2 = 1; #10
               in = 1; in2 = 0; #10
        s = 1; in = 0;          #10
        s = 1; in = 1; in2 = 1; #10
                       in2 = 0; #10
               in = 0; in2 = 1; #10
        s = 0; in = 1;          #10
        $finish;
    end
endmodule




// 4x1 MUX Testbench
module testbench();
logic [1:0] s;
logic [3:0] in; 
multiplexer_4to1 u0(.s(s),.in(in), .out(out));

initial 
    begin
        s = 2'b00; in = 4'b0001; #10
        s = 2'b01; in = 4'b0010; #10
        s = 2'b10; in = 4'b0100; #10
        s = 2'b11; in = 4'b1000; #10
        $finish;
    end
endmodule





// 8x1 MUX Testbench
module testbench();

logic [2:0] s;
logic [7:0] in;
logic out;
multiplexer_8to1 u0(.s(s), .in(in), .out(out));

initial 
    begin
        s = 3'b000; in = 8'bxxxxxxx1; #10
        s = 3'b001; in = 8'bxxxxxx1x; #10
        s = 3'b010; in = 8'bxxxxx1xx; #10
        s = 3'b011; in = 8'bxxxx1xxx; #10
        s = 3'b100; in = 8'bxxx1xxxx; #10
        s = 3'b101; in = 8'bxx1xxxxx; #10
        s = 3'b110; in = 8'bx1xxxxxx; #10
        s = 3'b111; in = 8'b1xxxxxxx; #10
        $finish;
    end
endmodule
