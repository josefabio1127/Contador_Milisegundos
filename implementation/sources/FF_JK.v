`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2021 06:06:40 PM
// Design Name: 
// Module Name: FF_JK
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


module FF_JK(CLK, J, K, RST, Qn
    );
    input CLK, J, K, RST;
    output reg Qn;
    
    wire [1:0] JK;
    assign JK[0] = K;
    assign JK[1] = J;
    
    always @(posedge CLK or posedge RST)
        if (RST) begin
            Qn <= 1'b1;
        end
        else begin
            case(JK)
                2'b00: Qn <= Qn;
                2'b01: Qn <= 1'b1;
                2'b10: Qn <= 1'b0;
                2'b11: Qn <= ~Qn;
            endcase
        end
              
endmodule
