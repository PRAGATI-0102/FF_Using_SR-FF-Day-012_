`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 10:21:20 PM
// Design Name: 
// Module Name: tb_t_ff
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


module tb_t_ff;

        reg clk,t;
        wire q,qb;
        
        t_ff dut(.clk(clk),.t(t),.q(q),.qb(qb));
        
        initial 
            begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
        initial
        begin
            t = 0;
            #20;
            t = 1;
            #20;
            t = 0;
            #20;
            t = 1;
            #20;
        end
        
        initial 
        begin
            $monitor("t = %b,q = %b,qb = %b",t,q,qb);
            #80;
            $finish;
        end
endmodule
