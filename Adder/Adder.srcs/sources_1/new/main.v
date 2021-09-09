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


module main;
    reg [3:0] a1;
    reg [3:0] b1;
    reg cin;
    wire [3:0] sum;
    integer i;
    
    adder add0 (.a(a),
                .b(b),
                .cin(cin),
                .cout(cout),
                .sum(sum));
    initial begin
        a1 <= 0;
        b1 <= 0;
        cin <= 0;
    
        $monitor ("a=0x%0h, b=0x%0h, c=0x%0h sum=0x%0h", a1, b1, cin, cout, sum);
    
        for (i = 0; i < 5; i = i+1) begin
            #10 a1 <= $random;
                b1 <= $random;
                cin <= $random;
        end
    end
endmodule
