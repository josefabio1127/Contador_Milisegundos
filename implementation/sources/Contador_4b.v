`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 01:37:38 PM
// Design Name: 
// Module Name: Contador_4b
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


module Contador_4b(CLK, RST, Q
    );
    input CLK, RST;
    output reg [3:0] Q;
    
    always @(posedge CLK or posedge RST)
        if (RST)
            Q <= 3'b0;
        else 
            Q <= Q + 1'b1;
endmodule