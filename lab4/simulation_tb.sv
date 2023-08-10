----------------------------------
// Testbench (for simulation) ↓↓↓
----------------------------------
module testBench();

    // Parameters of the Finite State Machine
    logic clk, reset, sa, sb;
    logic [2:0] LA, LB;

    // Device Under Test
   lab4_fsm dut(.clk(clk), .sa(sa), .sb(sb), .reset(reset), .la(LA), .lb(LB));
   
    // Clock Signal
    always
        begin
            clk <= 1;             #5;
            clk <= 0;             #5;
        end
   
    initial
        begin
            reset = 1;            #50; // beginnig
            
            reset = 0;
            sa = 0; sb = 0;       #100;
            sa = 0; sb = 1;       #150;
            sa = 1; sb = 1;       #150;
            sa = 1; sb = 0;       #150;
            
            reset = 1;
            sa = 0; sb = 0;       #50;
            sa = 0; sb = 1;       #50;
            sa = 1; sb = 1;       #50;
            sa = 1; sb = 0;       #50;
            
            $finish;
        end

endmodule
