`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 12:03:55 PM
// Design Name: 
// Module Name: Divisor_TB
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


module Divisor_TB(
    );
    
    //inputs
    reg CLK;
    reg RST;
    
    //outputs
    wire salidaU;
    wire salidaD;
    
    //instantiate
    Divisor_Frec UUT(CLK, RST, salidaU, salidaD
    );
    
    //stimulus
    initial begin
    CLK = 0;
    RST = 1;
    
    #20 RST = 0;
    end
    
    always #5 CLK = ~CLK;
endmodule
