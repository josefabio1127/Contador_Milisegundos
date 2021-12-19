`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 12:31:30 PM
// Design Name: 
// Module Name: Contador_20b
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


module Contador_19b(CLK, RST, Q
    );
    input CLK, RST;
    output reg [18:0] Q;
    
    always @(posedge CLK)
        if (RST)
            Q <= 19'b0;
        else 
            Q <= Q + 1'b1;

endmodule
