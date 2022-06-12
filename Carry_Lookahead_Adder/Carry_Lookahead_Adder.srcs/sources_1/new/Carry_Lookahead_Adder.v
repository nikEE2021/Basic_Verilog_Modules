`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/12/2022 04:48:33 PM
// Design Name: 
// Module Name: Carry_Lookahead_Adder
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


module Carry_Lookahead_Adder
    #(parameter WIDTH = 4)
    (
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input C_in,
    output [WIDTH-1:0] S,
    output C_out
    );
    
    wire[WIDTH-1:0] P, G;
    wire[WIDTH:0] C;
    genvar i;
    
    assign C[0] = C_in;
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            Half_Adder HA (
                .A (A[i]),
                .B (B[i]),
                .S (P[i]),
                .C (G[i])
                );
        end
    endgenerate
    
    Carry_Out_Generator COG_0 (
        .P (P),
        .G (G),
        .C_0 (C_in),
        .C (C)
        );
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            assign S[i] = P[i] ^ C[i];
        end
    endgenerate
    
    assign C_out = C[WIDTH];
    
endmodule
