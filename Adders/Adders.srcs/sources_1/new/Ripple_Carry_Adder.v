`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 12:55:59 PM
// Design Name: 
// Module Name: Ripple_Carry_Adder
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


module Ripple_Carry_Adder
    #(parameter WIDTH = 4)
    (
    input [WIDTH-1:0] A,
    input [WIDTH-1:0] B,
    input C_in,
    output [WIDTH-1:0] S,
    output C_out
    );
    
    wire[WIDTH:0] C;
    genvar i;
    
    assign C[0] = C_in;
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            Full_Adder FA (
                .A (A[i]),
                .B (B[i]),
                .C_in (C[i]),
                .S (S[i]),
                .C_out (C[i+1])
                );
        end
    endgenerate
    
    assign C_out = C[WIDTH];
    
endmodule
