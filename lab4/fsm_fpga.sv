-------------------------------------------
// Main SystemVerilog Code (for FPGA) ↓↓↓
-------------------------------------------
module lab4_fsm (input logic clk, sa, sb, reset,
                   output logic [2:0] la, logic [2:0] lb);

    // Slowed Clock
    logic slower; 
    ClockDiv CD(.clk(clk), .slow(slower)); 

    //Possible States
    typedef enum logic [2:0] {S0, S1, S2, S3, S4, S5, S6, S7} states; // all states are 3 bit
    states [2:0] current, next; 
   
    // Lights
    parameter red_stop    = 3'b111;
    parameter green_go    = 3'b011;
    parameter yellow_wait = 3'b001;
     
    // Reset (CHANGE clk WITH slower TO SLOW THE CLOCK)!!!
    always_ff @(posedge slower, posedge reset)
    if (reset) 
        current <=   S0;
    else 
        current <= next;
            
    // State Transition
    always_comb
        case (current)
            S0: 
                if ((sa == 1'b0) && (sb == 1'b1))
                    next = S1;
                else
                    next = S0;
            S1: 
                next = S2;   
            S2: 
                next = S3;
            S3: 
                next = S4;            
            S4: 
                if ((sb == 1'b1) & (sa == 1'b0))
                    next = S4;
                else
                   next = S5;
            S5: 
                next = S6;   
            S6: 
                next = S7;
            S7: 
                next = S0;         
        endcase
    
    
    // Output - State Matching
    always_comb
        case (current)
            S0: 
                begin
                    la =    green_go;
                    lb =    red_stop;
                end
            S1: 
                begin
                    la = yellow_wait;
                    lb =    red_stop;
                end
            S2: 
                begin
                    la =    red_stop;
                    lb =    red_stop;
                end
            S3: 
                begin
                    la =    red_stop;
                    lb = yellow_wait;
                end
            S4: 
                begin
                    la =    red_stop;
                    lb =    green_go;
                end
            S5: 
                begin
                    la =    red_stop;
                    lb = yellow_wait;
                end
            S6: 
                begin
                    la =    red_stop;
                    lb =    red_stop;
                end
            S7: 
                begin
                    la = yellow_wait;
                    lb =    red_stop;
                end
        endcase
endmodule
