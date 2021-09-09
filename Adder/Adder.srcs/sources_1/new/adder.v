`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/08/2021 04:18:39 PM
// Design Name: 
// Module Name: adder
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


module adder(
    input [7:0] a1,
    input [7:0] b1,
    input cin,
    output reg cout,
    output reg [7:0] sum
    );
    
    always @ (a1 or b1 or cin) begin      // This always @ block occurs when a value change occurs in a, b, or cin
    {cout, sum} = a1 + b1 + cin;        // Result goes into cout and sum, where sum gets the first value, followed by cout if overflow occurs
    end
endmodule
