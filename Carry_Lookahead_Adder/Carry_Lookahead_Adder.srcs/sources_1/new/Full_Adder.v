// Create Date: 06/12/2022 01:55:15 AM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(
    input A,
    input B,
    input C_in,
    output S,
    output C_out
    );
    
    wire P, G, PC;
    
    Half_Adder HA_0
    (
        .A  (A),
        .B  (B),
        .S  (P),
        .C  (G)
    );
    
    Half_Adder HA_1
    (
        .A  (P),
        .B  (C_in),
        .S  (S),
        .C  (PC)
    );
    
    assign C_out = G | PC;
    
endmodule