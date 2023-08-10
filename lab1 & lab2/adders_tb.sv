// testbench of the half adder 
module my_half_adder_testbench();
logic a, b;
logic sum, cout;
    
my_half_adder ha(a,b,sum,cout);
    
    initial begin
        a = 0; b = 0; #10;
        b = 1; #10;
        a = 1; b = 0; #10;
        b = 1; #10;
        $finish;
    end
endmodule




// testbench of the full adder
module my_full_adder_testbench();
logic a, b, cin;
logic sum, cout;
    
my_full_adder fa(a,b,cin,sum,cout);
    
    initial begin
        a = 0; b = 0; cin = 0; #10;
        cin = 1; #10;
        b = 1; cin = 0; #10;
        cin = 1; #10;
        a = 1; b = 0; cin = 0; #10;
        cin = 1; #10;
        b = 1; cin = 0; #10;
        cin = 1; #10;
        $finish;
    end
endmodule
