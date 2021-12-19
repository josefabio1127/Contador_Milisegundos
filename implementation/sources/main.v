`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 11:49:45 PM
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


module main(
    input Start, RST, CLK,
    output [7:0] Count
    );
    
    wire RESET;
    wire RST_CONTROL;
    
    assign RST_CONTROL = (RST_COMP_U & RST_COMP_D) | RST;
    
    FF_JK Modulo_Control(CLK, Start, 0, RST_CONTROL, RESET
    );
    
    wire CLK_U, CLK_D; 
    
    Divisor_Frec divisor_de_frecuencia (CLK, RESET, CLK_U, CLK_D);
    
    wire [3:0] QU, QD;
    
    wire RST_COMP_U, RST_COMP_D;
    wire RESET_U = RESET | RST_COMP_U;
    wire RESET_D = RESET | RST_COMP_D;
    
    Contador_4b Unidades(CLK_U, RESET_U, QU
    );
    
    Contador_4b Decenas(CLK_D, RESET_D, QD
    );
    
    wire [3:0] valor_comparar = 4'd10;
    
    Comparador_4b Comp_Unidades(QU, valor_comparar, RST_COMP_U
    );
    
    Comparador_4b Comp_Decenas(QD, valor_comparar, RST_COMP_D
    );

    assign Count[0] = QU [0];
    assign Count[1] = QU [1];
    assign Count[2] = QU [2];
    assign Count[3] = QU [3];
    
    assign Count[4] = QD [0];
    assign Count[5] = QD [1];
    assign Count[6] = QD [2];
    assign Count[7] = QD [3];
    
endmodule
