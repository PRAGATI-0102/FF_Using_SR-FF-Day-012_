`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/21/2023 06:13:49 PM
// Design Name: 
// Module Name: tb_jk_ff
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


module tb_jk_ff;

        reg clk,j,k;
        wire q,qb;
        
        jk_ff dut (.clk(clk),.j(j),.k(k),.q(q),.qb(qb));
        
        initial 
        begin
            clk = 0;
            forever #5 clk = ~clk;
        end
        
      
        initial 
        begin
            j = 0;
            k = 0;
            #20;
            j = 0;
            k = 1;
            #20;
            j = 1;
            k = 0;
            #20;
            j = 1;
            k = 1;
            #20;
        end
        
        initial
        begin
            $monitor("j = %b, k = %b, q = %b, qb = %b ",j,k,q,qb);
            #80;
            
            $finish;
        end    
       
endmodule
