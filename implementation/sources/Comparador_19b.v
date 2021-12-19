`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 12:33:13 PM
// Design Name: 
// Module Name: Comparador_20b
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


module Comparador_19b(entrada1, entrada2, salida
    );
    
    input [18:0] entrada1, entrada2;
    output reg salida;
    
    always @(entrada1)
        if (entrada1 == entrada2)
            salida <= 1'b1;
        else 
            salida <= 1'b0;
endmodule
