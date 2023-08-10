// Method Testbench
module testbench();
logic a, b, c, d, out;
method u0(.a(a), .b(b), .c(c), .d(d), .out(out));
initial begin
        a = 0; b = 0; c = 0; d = 0; #10
                             d = 1; #10
                      c = 1; d = 0; #10
                             d = 1; #10
               b = 1; c = 0; d = 0; #10
                             d = 1; #10
                      c = 1; d = 0; #10
                             d = 1; #10
        a = 1; b = 0; c = 0; d = 0; #10
                             d = 1; #10
                      c = 1; d = 0; #10
                             d = 1; #10
               b = 1; c = 0; d = 0; #10
                             d = 1; #10
                      c = 1; d = 0; #10
                             d = 1; #10
        $finish;
    end
endmodule
