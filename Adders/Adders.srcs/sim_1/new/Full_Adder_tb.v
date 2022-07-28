`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/28/2022 01:01:10 PM
// Design Name: 
// Module Name: Full_Adder_tb
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


module Full_Adder_tb();
    reg A, B, C_in;
    wire S, C_out;
    
    Full_Adder HA (
        .A (A),
        .B (B),
        .C_in (C_in),
        .S (S),
        .C_out (C_out)
    );
    
    initial begin
        A <= 1'b0;
        B <= 1'b0;
        C_in <= 1'b0;
        #100
        A <= 1'b0;
        B <= 1'b0;
        C_in <= 1'b1;
        #100
        A <= 1'b0;
        B <= 1'b1;
        C_in <= 1'b0;
        #100
        A <= 1'b0;
        B <= 1'b1;
        C_in <= 1'b1;
        #100
        A <= 1'b1;
        B <= 1'b0;
        C_in <= 1'b0;
        #100
        A <= 1'b1;
        B <= 1'b0;
        C_in <= 1'b1;
        #100
        A <= 1'b1;
        B <= 1'b1;
        C_in <= 1'b0;
        #100
        A <= 1'b1;
        B <= 1'b1;
        C_in <= 1'b1;
        #100 $finish;
    end
    
endmodule
