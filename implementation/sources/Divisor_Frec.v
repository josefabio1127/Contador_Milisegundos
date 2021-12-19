`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 11:27:22 PM
// Design Name: 
// Module Name: MOD_DIV_FREC
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


module Divisor_Frec (CLK, RESET, CLK_U, CLK_D
);
    input CLK, RESET;
    output wire CLK_U, CLK_D;
    
    wire [15:0] Sal_Contador_16b;
    wire [18:0] Sal_Contador_19b;
    wire Sal_Comp_16b;
    wire Sal_Comp_19b;
    
    wire RST_16b = RESET | Sal_Comp_16b;
    wire RST_19b = RESET | Sal_Comp_19b;
    
    wire [15:0] entrada_16b = 16'd49999;
    wire [18:0] entrada_19b = 19'd499999;
    
    Contador_16b Contador1(CLK, RST_16b, Sal_Contador_16b
    );
    
    Comparador_16b Comparador1(Sal_Contador_16b, entrada_16b, Sal_Comp_16b
    );
    
    FF_T Salida_Unidades(CLK, Sal_Comp_16b, RESET, CLK_U
    );
    
    Contador_19b Contador2(CLK, RST_19b, Sal_Contador_19b
    );
    
    Comparador_19b Comparador2(Sal_Contador_19b, entrada_19b, Sal_Comp_19b
    );
    
    FF_T Salida_Decenas(CLK, Sal_Comp_19b, RESET, CLK_D
    );
    
endmodule
