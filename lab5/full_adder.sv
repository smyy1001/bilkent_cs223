// Full Adder
module f_adder ( input logic a, b, cin,
                output logic sum, cout );
    
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (a & cin) | (b & cin);
    
endmodule
