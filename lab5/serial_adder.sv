// Serial Adder
module s_adder( input logic clk, reset, parload, shift, [7:0] a, [7:0] b,
                output logic [7:0] sum,
                output logic outt );
    
    // Slowed Clock (for the fpga - change clk to slower in the next few lines)
    //logic slower; 
    //ClockDiv CD(.clk(clk), .slow(slower)); 
    
    logic [7:0] arr, arr2;
    logic temp, temp2, cout, temp_sum, sgn;
    
    // Count is to making sure executes exatly 8 times
    integer count = 0;
    
    // 3 shift Registers
    s_reg sr1(clk, reset, parload, sgn, a, 1'b0, arr);
    s_reg sr2(clk, reset, parload, sgn, b, 1'b0, arr2);
    s_reg sr3(clk, reset, parload, sgn, 8'b0, temp_sum, sum);
    
    // 1 D-FlipFlop
    d_ff dff(clk, reset, temp2, temp);
    
    // 1 Full Adder
    f_adder fa(arr[0], arr2[0], temp, temp_sum, cout);
    
    assign sgn = ~outt & shift;
    assign temp2 = sgn & cout | ~sgn & temp;
    
    always @( posedge clk )
    begin
        if (shift) begin
            count = count + 1;
        end
        if (reset | parload) begin
            outt = 0;
            count = 0;
        end
        if (count == 8) begin
            outt = 1;
        end
    end
    
endmodule
