---------------------------------------------------------
// Clock Divider method to slow the clock (for FPGA) ↓↓↓
---------------------------------------------------------
module ClockDiv( input logic clk, output logic slow );
    
    // Clock Counter
    logic [28:0] counter;

    always @(  posedge clk  )
        begin
            if(  counter >= 199999999  )
                begin
                    counter <= 0;
                    slow    <= 0;
                end
            else
                begin
                    counter <= counter + 1;
                    slow    <=           1;
                end
        end

endmodule
