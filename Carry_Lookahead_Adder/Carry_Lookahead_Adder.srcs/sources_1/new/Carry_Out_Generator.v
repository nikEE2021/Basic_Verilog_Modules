// Engineer: 
// 
// Create Date: 06/12/2022 02:53:22 AM
// Design Name: 
// Module Name: Carry_LookAhead_Generator
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
    output [WIDTH-1:0] C
    );
    
    wire array[WIDTH-1:0][WIDTH-1:0];
    genvar i, j;
    
    generate
        for (i = 0; i < WIDTH; i = i + 1) begin
            for (j = 0; j < i; j = j + 1) begin
                if ((j == 0) && (i - 1 != WIDTH))
                    assign array[i][0] = G[WIDTH-i-1];
                else if (i - 1 == WIDTH)
                    assign array[i][0] = C_0;
                else
                    assign array[i][j] = P[WIDTH-i+j-1];
            end
        end
    endgenerate
    
    assign C[0] = C_0;
    
    generate
        for (i = 1; i < WIDTH; i = i + 1) begin
            for (j = 1; j < i; j = j + 1) begin
                assign C[i] = C[i] + array[i][j];
            end
        end
    endgenerate
    
endmodule