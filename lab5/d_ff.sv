// D Flip-Flop
module d_ff( input logic clk, reset, cin,
             output logic cout );
    
    always @(posedge clk)
    begin
        if (reset) begin
            cout = 0;
        end
        else begin
            cout <= cin;
        end
    end
endmodule
