`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 07:46:57 PM
// Design Name: 
// Module Name: FF_T
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


module FF_T(CLK, T, RST, Qn
    );
    input CLK, RST, T;
    output reg Qn;
    
    always @(posedge CLK or posedge RST)
        if (RST) begin
            Qn <= 1'b1;
        end 
        else if(T) begin
            Qn <= ~Qn;
        end 
        else begin
            Qn <= Qn;
        end
  
endmodule
