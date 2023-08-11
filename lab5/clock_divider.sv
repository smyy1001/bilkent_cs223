// Clock Divider
module ClockDiv( input logic clk, output logic slow );
    
    // Clock Counterr
    logic [28:0] counter;

    always @(  posedge clk  )
        begin  
            if(  counter >= 49999999  )
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
