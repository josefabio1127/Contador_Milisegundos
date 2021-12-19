`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 07:57:01 PM
// Design Name: 
// Module Name: FF_T_TB
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


module FF_T_TB(
    );
   
    //inputs
    reg CLK, RST, T;
    
    //outputs
    wire Qn;
    
    //instantiate
    FF_T UUT( CLK, T, RST, Qn
    );
    
    //stimulus
    initial begin
        CLK = 0;
        T = 0;
        RST = 1;
   end
   
   always #10 CLK = ~CLK;
   always #20 T = ~T;
   always #80 RST = ~RST;
  
endmodule
