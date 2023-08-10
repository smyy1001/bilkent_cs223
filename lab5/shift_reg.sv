// Shift Register
module s_reg ( input logic clk, reset, par_load, shift, [7:0] in,
               input logic added,
               output logic [7:0] cout );

    
    always @(posedge clk)
    begin
        if (reset) begin
            cout <= 8'b0;
        end
        
        else if (shift) begin
            cout <= cout >> 1;
            cout[7] <= added;
        end
        
        else if (par_load) begin
            cout <= in;
        end    
    end
endmodule
