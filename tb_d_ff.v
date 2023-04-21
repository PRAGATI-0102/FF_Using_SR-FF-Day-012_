`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 09:33:50 PM
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff;

        reg clk,d;
        wire q,qb;
        
        d_ff dut(.clk(clk),.d(d),.q(q),.qb(qb));
        
        initial
            begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial 
        begin
            d = 0;
            #10;
            d = 1;
            #10;
            d = 0;
            #10;
            d = 1;
            #10;
        end
        
        initial 
        begin
            $monitor("d = %b,q = %b,qb = %b",d,q,qb);
            #40;
            $finish;
        end
endmodule
