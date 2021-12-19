`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 11:35:31 AM
// Design Name: 
// Module Name: Contador_17b
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


module Contador_16b(CLK, RST, Q
    );
    input CLK, RST;
    output reg [15:0] Q;
    
    always @(posedge CLK)
        if (RST)
            Q <= 16'b0;
        else 
            Q <= Q + 1'b1;
            
endmodule
