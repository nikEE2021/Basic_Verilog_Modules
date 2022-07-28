`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 01:00:14 PM
// Design Name: 
// Module Name: Half_Adder_tb
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


module Half_Adder_tb();
    reg A, B;
    wire S, C;
    
    Half_Adder HA (
        .A (A),
        .B (B),
        .S (S),
        .C (C)
    );
    
    initial begin
        A <= 1'b0;
        B <= 1'b0;
        #100
        A <= 1'b0;
        B <= 1'b1;
        #100
        A <= 1'b1;
        B <= 1'b0;
        #100
        A <= 1'b1;
        B <= 1'b1;
        #100 $finish;
    end
    
endmodule
