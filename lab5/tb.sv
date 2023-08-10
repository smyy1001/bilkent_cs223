// Testbench
module tb();
    // Needed variables to initiate the serial adder
    logic clk, reset, parload, shift;
    logic [7:0] a, b, sum;
    
    // Device Under Test
    s_adder dut(clk, reset, parload, shift, a, b, sum);
    
    always begin
        clk = 1; #10;
        clk = 0; #10;
    end
    
    initial begin
        reset   = 1; parload = 0; shift = 0; a = 8'b01001010; b = 8'b00110011;    #50 ;                      
        reset   = 0; parload = 1;                                                 #30 ;
        parload = 0;                                                              #50 ;
        shift   = 1;                                                              #400;
        shift   = 0; reset   = 1;                                                 #30 ;
        reset   = 0; parload = 1;                                                 #30 ;
        parload = 0; shift   = 1;                                                 #400;
        reset   = 1; shift   = 0;                                                 #50 ;
        $finish;
    end

endmodule
