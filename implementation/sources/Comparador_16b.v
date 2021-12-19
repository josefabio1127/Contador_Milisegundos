`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 11:53:34 AM
// Design Name: 
// Module Name: Comparador_17b
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


module Comparador_16b(entrada1, entrada2, salida
    );
    
    input [15:0] entrada1, entrada2;
    output reg salida;
    
    always @(entrada1)
        if (entrada1 == entrada2)
            salida <= 1'b1;
        else 
            salida <= 1'b0;
endmodule
