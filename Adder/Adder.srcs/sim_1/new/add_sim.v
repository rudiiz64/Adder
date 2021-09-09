`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2021 04:33:02 PM
// Design Name: 
// Module Name: main
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module add_sim;
    reg [7:0] a1;
    reg [7:0] b1;
    reg cin;
    wire [7:0] sum;
    integer i;
    
    adder add0 (.a1 (a1),
                .b1 (b1),
                .cin (cin),
                .cout (cout),
                .sum (sum));
    initial begin
        a1 <= 0;
        b1 <= 0;
        cin <= 0;
    
        $monitor ("a=%d, b=%d, c=%d cout=%d sum=%d", a1, b1, cin, cout, sum);
    
        for (i = 0; i < 5; i = i+1) begin
            #10 a1 <= $random;
                b1 <= $random;
                cin <= $random;
        end
    end
endmodule