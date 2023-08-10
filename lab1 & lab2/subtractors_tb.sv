// testbench of the half subtractor
module my_half_subtractor_testbench();
logic a, b;
logic diff, bout;
    
my_half_subtractor hs(a,b,diff,bout);
    
    initial begin
        a = 0; b = 0; #10;
        b = 1; #10;
        a = 1; b = 0; #10;
        b = 1; #10;
        $finish;
    end
endmodule




// testbench of the full subtractor 
module my_full_subtractor_testbench();
logic a, b, bin;
logic diff, bout;
    
my_full_subtractor fs(a,b,bin,diff,bout);
    
    initial begin
        a = 0; b = 0; bin = 0; #10;
        bin = 1; #10;
        b = 1; bin = 0; #10;
        bin = 1; #10;
        a = 1; b = 0; bin = 0; #10;
        bin = 1; #10;
        b = 1; bin = 0; #10;
        bin = 1; #10;
        $finish;
    end
endmodule
