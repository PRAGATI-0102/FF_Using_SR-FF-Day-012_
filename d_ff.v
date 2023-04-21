`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 09:31:59 PM
// Design Name: 
// Module Name: d_ff
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


module d_ff(clk,d,q,qb);

        input clk,d;
        output reg q;
        output qb;
        wire w;
        
        assign w = ~d;
        
        sr_ff F1(clk,d,w,q,qb);
        
endmodule
