`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 06:33:24 PM
// Design Name: 
// Module Name: FF_JK_TB
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


module FF_JK_TB(
    );
    
    //inputs
    reg CLK, J, K, RST;
    
    //outputs
    wire Qn;
    
    //instantiate
    FF_JK UUT(CLK, J, K, RST, Qn
    );
    
    //stimulus
    initial begin
    J = 0;
    K = 0;
    CLK = 0;
    RST = 0;
    #50 RST = 1;
    #50 RST = 0;
    #100 K = 1;
    #100 K = 0;
    #100 J = 1;
    #10 J = 0;
    #200000000 J = 1;
    #10 J = 0;
   end
   
   always #5 CLK = ~CLK;
    
endmodule
