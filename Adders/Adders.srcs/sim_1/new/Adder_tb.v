`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 01:02:59 PM
// Design Name: 
// Module Name: Adder_tb
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


module Adder_tb
    #(parameter WIDTH = 4)
    ();
    reg[WIDTH-1:0] A, B;
    reg C_in;
    wire[WIDTH-1:0] S_RCA, S_CLA;
    wire C_out_RCA, C_out_CLA, S_flag, C_out_flag;
    
    Ripple_Carry_Adder RCA (
        .A (A),
        .B (B),
        .C_in (C_in),
        .S (S_RCA),
        .C_out (C_out_RCA)
        );
    
    Carry_Lookahead_Adder CLA (
        .A (A),
        .B (B),
        .C_in (C_in),
        .S (S_CLA),
        .C_out (C_out_CLA)
        );
    
    assign S_flag = S_RCA != S_CLA;
    assign C_out_flag = C_out_RCA != C_out_CLA;
    
    initial begin
        A = 4'b0000;
        B = 4'b0000;
        C_in = 1'b0;
    end
    
    always begin
    #10
    {A, B} = {A, B} + 1'b1;
    end
    
endmodule
