`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 06:08:38 PM
// Design Name: 
// Module Name: jk_ff
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


module jk_ff(clk,j,k,q,qb);

        input clk,j,k;
        output q;
        output qb;
        wire w1,w2;
        
        assign w1 = j & qb;
        assign w2 = k & q;
        sr_ff F1(clk,w1,w2,q,qb);
           
endmodule
