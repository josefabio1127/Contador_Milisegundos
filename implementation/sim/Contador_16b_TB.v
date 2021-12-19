`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/27/2021 11:40:09 AM
// Design Name: 
// Module Name: Contador_17b_TB
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


module Contador_16b_TB(
    );
    
    //inputs
    reg CLK;
    reg RST;
    
    //outputs
    wire [15:0] Q;
    
    //instantiate
    Contador_16b UUT(CLK, RST, Q
    );
    
    //stimulus
    initial begin
        CLK = 0;
        RST = 1;
        
        #20 RST = 0;
        #500 RST = 1;
        #20 RST = 0;
    end
    
    always #5 CLK = ~CLK;
endmodule
