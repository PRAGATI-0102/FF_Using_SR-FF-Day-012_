`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 06:03:01 PM
// Design Name: 
// Module Name: sr_ff
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


module sr_ff(clk,s,r,q,qb);

        input clk,s,r;
        output reg q;
        output qb;
        
        always@(posedge clk)
        begin
            case({s,r})
            2'b00: q <= 1'b0;
            2'b01: q <= 1'b0;
            2'b10: q <= 1'b1;
            2'b11: q <= 1'bx;
            endcase
        end
        
        assign qb = ~q;
        
endmodule
