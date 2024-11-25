`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2024 09:31:45 AM
// Design Name: 
// Module Name: fbga_top
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

module fpga_top (
    input  logic [3:0] SW,  // Switches for inputs a, b, c, d
    output logic LED0       // LED to display the output f
);

    logic a, b, c, d;
    logic f;

    assign a = SW[0];
    assign b = SW[1];
    assign c = SW[2];
    assign d = SW[3];



    // Instantiate the and4gate module
    and4gate u_and4gate (.*);

    // Connect the output f to the LED
    assign LED0 = f;

endmodule

