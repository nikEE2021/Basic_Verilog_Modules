`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 12:57:40 PM
// Design Name: 
// Module Name: Carry_Out_Generator
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


module Carry_Out_Generator
    #(parameter WIDTH = 4)
    (
    input [WIDTH-1:0] P,
    input [WIDTH-1:0] G,
    input C_0,
    output [WIDTH:0] C
    );
    
    genvar i;
    
    assign C[0] = C_0;
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            assign C[i+1] = G[i] | (P[i] & C[i]);
        end
    endgenerate
    
endmodule
